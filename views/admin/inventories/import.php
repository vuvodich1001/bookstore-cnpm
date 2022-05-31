<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<div class="row">
    <div class="grid wide">
        <div class="col-6">
            <h1>Inventory</h1>
            <form action="inventory/importBook" method="POST" id="form-inventory" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="">Select Supplier </label>
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
                    <label for="">Input Book ID</label>
                    <input type="text" name="book_id" id="book_id" style="max-width: 200px;">
                </div>

                <div class="form-group">
                    <a href="http://localhost/bookstore-cnpm/admin/book" class="btn">List All Book</a>
                </div>

                <div class="name-group">
                    <div class="form-group">
                        <label for="">Total</label>
                        <input type="text" name="total" id="total">
                    </div>

                    <div class="form-group">
                        <label for="">Migrate Quantity</label>
                        <input type="number" name="migrate_quantity" id="migrate_quantity" min="<?php echo $GLOBALS['MIN_MIGRATE'] ?>">
                    </div>
                </div>

                <button class="btn btn-import">Import</button>

                <div class="search-result">
                    <h2></h2>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="pagination">

</div>
</script>

<?php $this->view('partitions.admin.footer') ?>