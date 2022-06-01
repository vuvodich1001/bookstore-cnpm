<?php $this->view('partitions.admin.header', ['roles' => $roles]); ?>

<div class="action">
    <h2>Order</h2>
    <button class="btn btn-create"><i class="fas fa-plus-circle"></i> Create Order</button>
</div>
<div class="content">
    <h1>List Orders</h1>
    <table>
        <thead>
            <th>#</th>
            <th>CusId</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Method</th>
            <th>Total</th>
            <th>Status</th>
            <th>Paid</th>
            <th>Debt</th>
            <th>Order_date</th>
            <th>Action</th>
        </thead>
        <tbody class="content-body">
            <?php
            foreach ($orders as $order) {
            ?>
                <tr>
                    <td><?php echo $order['order_id'] ?></td>
                    <td><?php echo $order['customer_id'] ?></td>
                    <td><?php echo $order['first_name'] . ' ' . $order['last_name'] ?></td>
                    <td style="max-width: 250px;"><?php echo $order['line1'] . ', ' . $order['line2'] . ', ' . $order['city'] ?></td>
                    <td><?php echo $order['phone'] ?></td>
                    <td><?php echo $order['payment_method'] ?></td>
                    <td><?php echo number_format($order['total'], 0, '.', '.') ?>đ</td>
                    <td class="<?= $textColors[$order['status']] ?> order-status-<?php echo $order['order_id'] ?>"><?php echo $order['status'] ?></td>
                    <td><?php echo number_format($order['paid'], 0, '.', '.') ?> đ</td>
                    <td><?php echo number_format($order['debt'], 0, '.', '.') ?> đ</td>
                    <td><?php echo date('d/m/Y', strtotime($order['order_date'])); ?></td>
                    <td>
                        <a href="" class="btn-detail-order" order-id="<?php echo $order['order_id'] ?>"><i class="fas fa-info-circle"></i></a>
                        <?php if (($order['debt'] > 0 || $order['paid'] == 0) && $order['status'] != 'Đã hủy') : ?>
                            <a href="" class="btn-success-status btn-bill" order-id="<?php echo $order['order_id'] ?>"><i class="fa-solid fa-hand-holding-dollar"></i></a>
                        <?php endif ?>
                        <?php if ($order['status'] == 'Đang xử lí' || $order['status'] == 'Đã thanh toán') : ?>
                            <a href="" class="btn-success-status" order-id="<?php echo $order['order_id'] ?>"><i class="far fa-check-circle"></i></a>
                            <a href="" class="btn-shipping-status" order-id="<?php echo $order['order_id'] ?>"><i class="fas fa-shipping-fast"></i></a>
                        <?php elseif ($order['status'] == 'Đang giao hàng') : ?>
                            <a href="" class="btn-success-status" order-id="<?php echo $order['order_id'] ?>"><i class="far fa-check-circle"></i></a>
                        <?php endif ?>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
<div class="modal modal-overlay">
    <div class="modal-body modal-book">
        <h2>Order Detail</h2>
        <!-- <h1>Update user</h1> -->
        <table class="detail-table">
            <thead>
                <th>Title</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Subtotal</th>
            </thead>
            <tbody class="detail-body">

            </tbody>
        </table>
        <button class="btn btn-cancel btn-close-detail">Close</button>
    </div>
</div>

<div class="modal modal-overlay">
    <div class="modal-body modal-paid">
        <h2 style="text-align:center">Phiếu thu tiền</h2>
        <!-- <h1>Update user</h1> -->
        <form action="">
            <div class="name-group">
                <div class="form-group">
                    <label for="">Họ tên</label>
                    <input type="text" class="payment-name">
                </div>
                <div class="form-group">
                    <label for="">Số tiền thu</label>
                    <input type="number" name="paid" class="payment-paid">
                </div>
            </div>
            <div class="name-group">
                <div class="form-group">
                    <label for="">Điện thoại</label>
                    <input type="text" class="payment-phone">
                </div>
                <div class="form-group">
                    <label for="">Ngày thu tiền</label>
                    <input type="date" class="payment-date" value="<?php echo date('d-m-Y', time()); ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" class="payment-email">
            </div>
        </form>
        <button class="btn btn-submit btn-submit-bill" style="margin-top: 15px;">Submit</button>
    </div>
</div>
<?php $this->view('partitions.admin.footer') ?>