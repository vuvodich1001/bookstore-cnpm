<div class="sidebar">
    <div class="sidebar-title">
        <i class="far fa-user-circle"></i>
        <h2>Admin Management</h2>
    </div>
    <ul class="sidebar-list">
        <?php $icons = [
            'user' => '<i class="fas fa-users"></i>',
            'customer' => '<i class="far fa-user"></i>',
            'category' => '<i class="fab fa-apple"></i>',
            'book' => '<i class="fas fa-book"></i>',
            'order' => '<i class="fas fa-history"></i>',
            'supplier' => '<i class="fas fa-coins"></i>',
            'tracking' => '<i class="fas fa-parachute-box"></i>',
            'inventory' => '<i class="fas fa-warehouse"></i>',
            'discount' => '<i class="fas fa-tags"></i>',
            'review' => '<i class="far fa-comment"></i>',
            'parameter' => '<i class="fab fa-whmcs"></i>'
        ] ?>
        <li class="sidebar-item"><a href=""><i class="fas fa-table"></i>DashBoard</a></li>
        <?php foreach ($roles as $role) : ?>
            <li class="sidebar-item"><a href="<?= $role['name'] ?>"> <?php echo $icons[$role['name']] ?> <?= ucfirst($role['name']) ?></a></li>
        <?php endforeach ?>
        <li class="sidebar-item"><a href="auth/adminLogout"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
    </ul>
</div>