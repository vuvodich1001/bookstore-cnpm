<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<div class="row">
    <div class="grid wide">
        <div class="col-6">
            <h1>Inventory</h1>
            <div class="form-group">
                <a href="book" class="btn">List All Book</a>
            </div>
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
                    <label for="">BookId</label>
                    <input type="text" name="book_id" id="book_id">
                </div>
                <div class="form-group">
                    <label for="">Price</label>
                    <input type="number" name="price" id="price-import">
                </div>
                <div class="form-group">
                    <label for="">Quantity</label>
                    <input type="number" name="migrate_quantity" placeholder="migrate_quantity" id="migrate-quantity" min="<?php echo $GLOBALS['MIN_MIGRATE'] ?>">
                </div>

                <div class="form-group">
                    <label for="">Total</label>
                    <input type="text" name="total" id="total-import">
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