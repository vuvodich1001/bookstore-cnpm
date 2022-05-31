<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<div class="col-12">
    <div class="grid wide">
    <h1>Inventory</h1>
    <form action="inventory/importBook" method="POST" id="form-inventory" enctype="multipart/form-data">
        <div class="form-group">
            <label for="">Select Supplier: </label>
            <select name="supplier" id="#supplier" class="">
                <?php
                foreach ($suppliers as $supplier) {
                ?>
                    <option value="<?php echo $supplier['supplier_id'] ?>"><?php echo $supplier['name'] ?></option>
                <?php
                }
                ?>
            </select>
        </div>

        <div class="form-group">
            <label for="">Select Category: </label>
            <select name="category" id="#category" class="">
                <?php
                foreach ($categories as $category) {
                ?>
                    <option value="<?php echo $category['category_id'] ?>"><?php echo $category['name'] ?></option>
                <?php
                }
                ?>
            </select>
        </div>

        

        <div class="form-group">
            <label for="">Input Book ID</label>
            <input type="text" name="book_id" id="book_id">
        </div>

        <div class="name-group name-group">
            <div class="form-group">
                <label for="">Purchase Date</label>
                <input type="date" name="purchase_date" id="purchase_date">
            </div>

            <div class="form-group">
                <label for="">Receive Date</label>
                <input type="date" name="receive_date" id="receive_date">
            </div>
        </div>

        <div class="name-group">
            <div class="form-group">
                <label for="">Total</label>
                <input type="text" name="total" id="total">
            </div>

            <div class="form-group">
                <label for="">Migrate Quantity</label>
                <input type="number" name="migrate_quantity" id="migrate_quantity">
            </div>
        </div>

        <button class="btn btn-import">Import</button>
    </form>
    </div>
</div>

<div class="pagination">

</div>
<?php $this->view('partitions.admin.footer') ?>