<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<div class="action">
    <h2>Parameter</h2>
    <button class="btn btn-create"><i class="fas fa-plus-circle"></i> Create Parameter</button>
</div>
<div class="content">
    <h1>List parameters</h1>
    <table>
        <thead>
            <th>#</th>
            <th>Code</th>
            <th>Value</th>
            <th>Enable</th>
            <th>Action</th>
        </thead>
        <tbody class="content-body">
            <?php
            foreach ($parameters as $parameter) {
            ?>
                <tr>
                    <td><?php echo $parameter['parameter_id'] ?></td>
                    <td><?php echo $parameter['code'] ?></td>
                    <td><?php echo $parameter['value'] ?></td>
                    <td><?php echo $parameter['enable'] ?> </td>
                    <td><a href="" class="btn-delete-parameter" parameter-id="<?php echo $parameter['parameter_id'] ?>"><i class="fas fa-trash-alt"></i></a>
                        <a href="" class="btn-update-parameter" parameter-id="<?php echo $parameter['parameter_id'] ?>"><i class="fas fa-edit"></i></a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
<div class="modal modal-overlay">
    <div class="modal-body modal-parameter">
        <h1>Parameter</h1>
        <form action="parameter/createParameter" method="POST" id="form-parameter" enctype="multipart/form-data">
            <div class="form-group">
                <label for="">Code</label>
                <input type="text" name="code" id="code">
            </div>

            <div class="name-group">
                <div class="form-group">
                    <label for="">Value</label>
                    <input type="text" name="value" id="value">
                </div>

                <div class="form-group">
                    <label for="">Enable</label>
                    <input type="text" name="enable" id="enable">
                </div>
            </div>

            <button class="btn btn-create-parameter">Create</button>
            <button class="btn btn-cancel">Cancel</button>
        </form>
    </div>
</div>
<div class="pagination">

</div>
<?php $this->view('partitions.admin.footer') ?>