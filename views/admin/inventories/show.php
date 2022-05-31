<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<?php if (isset($error)) { ?>
    <div class="grow wide" style="background-color: #EF7171; text-align: center; padding: 20px 40px;">
        <div class="col-12">
            <h2 style="color:yellow;"><?php echo $error ?></h2>
        </div>
    </div>

<?php }
if (isset($message)) { ?>
    <div class="action">
        <h2 style="color: green;"><?php echo $message ?></h2>
    </div>
    <div class="content">
        <table>
            <thead>
                <th>#</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Image</th>
                <th>Publish Date</th>
                <th>Publisher</th>
                <th>Current Quantity</th>
            </thead>

            <tbody class="content-body">
                <tr>
                    <td><?php echo $book['book_id'] ?></td>
                    <td><?php echo $book['title'] ?></td>
                    <td><?php echo $book['author'] ?></td>
                    <td><?php echo number_format($book['price'], 0, '.', '.') ?> đ</td>
                    <td><img src="../public/admin/uploads/<?php echo explode(',', $book['main_image'])[0]; ?>" alt=""></td>
                    <td><?php echo date('d/m/Y', strtotime($book['publish_date'])) ?></td>
                    <td><?php echo $book['publisher'] ?></td>
                    <td style="color: green;"><?php echo $book['current_quantity'] ?></td>
                </tr>
            </tbody>
        </table>
    </div>
<?php } ?>
<div class="action">
    <h2>Inventory</h2>
    <a href="inventory/import" class="btn btn-import"><i class="fas fa-plus-circle"></i> Import Book</a>
</div>
<div class="content">
    <h1>Inventory Tracking History</h1>
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Supplier ID</th>
                <th>Book ID</th>
                <th>Import Date</th>
                <th>Total</th>
                <th>Price</th>
                <th>Migrate Quantity</th>
            </tr>
        </thead>
        <tbody class="content-body">
            <?php
            foreach ($inventories as $inventory) {
            ?>
                <tr>
                    <td><?php echo $inventory['inventory_id'] ?></td>
                    <td><?php echo $inventory['supplier_id'] ?></td>
                    <td><?php echo $inventory['book_id'] ?></td>
                    <td><?php echo date('d-m-Y', strtotime($inventory['purchase_date'])) ?></td>
                    <td><?php echo $inventory['total'] ?></td>
                    <td><?php echo number_format($inventory['price'], 0, '.', '.') ?> đ</td>
                    <td><?php echo $inventory['migrate_quantity'] ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<?php $this->view('partitions.admin.footer') ?>