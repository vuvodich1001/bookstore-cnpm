let btnDetailOrders = document.querySelectorAll('.btn-detail-order');
let btnSuccesses = document.querySelectorAll('.btn-success-status');
let btnShippings = document.querySelectorAll('.btn-shipping-status');
let orderId;

function openOrderDetail() {
    btnDetailOrders = document.querySelectorAll('.btn-detail-order');
    if (btnDetailOrders) {
        btnDetailOrders.forEach(btnDetailOrder => {
            btnDetailOrder.addEventListener('click', e => {
                e.preventDefault();
                modal.classList.add('modal-active');
                orderId = btnDetailOrder.getAttribute('order-id');
                fetch(`index.php?controller=order&action=orderDetail&id=${orderId}`)
                    .then(response => response.json())
                    .then(results => {
                        let detail = document.querySelector('.detail-body');
                        let orderDetails = results.map(result => {
                            return `
                                <tr>
                                    <td>${result.title}</td>
                                    <td>${result.quantity}</td>
                                    <td>${result.price}</td>
                                    <td>${result.subtotal}</td>
                              </tr>
                            `;
                        })
                        detail.innerHTML = orderDetails.join('');
                    })
            });
        });
        if (btnCancel) {
            btnCancel.addEventListener('click', (e) => {
                e.preventDefault();
                modal.classList.remove('modal-active');
            })
        }
    }
}

function changeStatus() {
    btnSuccesses = document.querySelectorAll('.btn-success-status');
    btnShippings = document.querySelectorAll('.btn-shipping-status');
    if (btnSuccesses) {
        btnSuccesses.forEach(btnSuccess => {
            btnSuccess.addEventListener('click', (e) => {
                e.preventDefault();
                let check = confirm('Bạn đã hoàn thành đơn hàng này rồi phải không!!!');
                let orderId = btnSuccess.getAttribute('order-id');
                let orderStatus = document.querySelector(`.order-status-${orderId}`);
                if (check) {
                    orderStatus.textContent = 'Giao hàng thành công';
                    orderStatus.classList.remove('text-info');
                    orderStatus.classList.add('text-success');
                    btnSuccess.remove();
                    fetch(`index.php?controller=order&action=changeStatusSuccess&id=${orderId}`);

                }
            })
        })
    }

    if (btnShippings) {
        btnShippings.forEach(btnShipping => {
            btnShipping.addEventListener('click', (e) => {
                e.preventDefault();
                let check = confirm('Bạn đang giao đơn hàng này rồi phải không!!!');
                let orderId = btnShipping.getAttribute('order-id');
                let orderStatus = document.querySelector(`.order-status-${orderId}`);
                if (check) {
                    orderStatus.textContent = 'Đang giao hàng';
                    orderStatus.classList.remove('text-primary');
                    orderStatus.classList.add('text-info');
                    btnShipping.remove();
                    fetch(`index.php?controller=order&action=changeStatusShipping&id=${orderId}`);
                }
            })
        })
    }
}

function fetchDataOrder(data = {}, id) {
    url = `index.php?controller=order&action=searchOrder&name=${id}`;
    fetch(url, data)
        .then((response) => response.json())
        .then((posts) => {
            if (posts.length != 0) {
                const contentBody = document.querySelector('.content-body');
                const order = posts.map((order) => {
                    let color;
                    if (order['status'] == 'Đang xử lí') color = '#17a2b8';
                    else if (order['status'] == 'Giao hàng thành công') color = '#28a745';
                    else if (order['status'] == 'Đã thanh toán') color = '#ffc107';
                    else if (order['status'] == 'Đã huỷ') color = '#dc3545';

                    if ((order['status'] == 'Đang xử lí' || order['status'] == 'Đã thanh toán'))
                        return `
                            <tr>
                                <td>${order['order_id']}</td>
                                <td>${order['first_name']} ${order['last_name']}</td>
                                <td>${order['line1']}, ${order['line2']}, ${order['city']} </td>
                                <td>${order['phone']} </td>
                                <td>${order['payment_method']}</td>
                                <td>${order['paid']}</td>
                                <td>${order['debt']}</td>
                                <td>${order['total']}đ</td>
                                <td style="color: ${color}">${order['status']}</td>
                                <td>${order['order_date']}</td>
                                <td>
                                    <a href="" class="btn-detail-order" order-id="${order['order_id']}"><i class="fas fa-info-circle"></i></a>
                                    <a href="" class="btn-success-status" order-id="${order['order_id']}"><i class="far fa-check-circle"></i></a>
                                    <a href="" class="btn-shipping-status" order-id="${order['order_id']}"><i class="fas fa-shipping-fast"></i></a>
                                </td>
                            </tr>
                        `;
                    else if (order['status'] == 'Đang giao hàng'){
                        return `
                            <tr>
                                <td>${order['order_id']}</td>
                                <td>${order['first_name']} ${order['last_name']}</td>
                                <td>${order['line1']}, ${order['line2']}, ${order['city']} </td>
                                <td>${order['phone']} </td>
                                <td>${order['payment_method']}</td>
                                <td>${order['paid']}</td>
                                <td>${order['debt']}</td>
                                <td>${order['total']}đ</td>
                                <td style="color: ${color}">${order['status']}</td>
                                <td>${order['order_date']}</td>
                                <td>
                                    <a href="" class="btn-detail-order" order-id="${order['order_id']}"><i class="fas fa-info-circle"></i></a>
                                    <a href="" class="btn-success-status" order-id="${order['order_id']}"><i class="far fa-check-circle"></i></a>
                                </td>
                            </tr>
                        `;
                    }
                    return `
                        <tr>
                            <td>${order['order_id']}</td>
                            <td>${order['first_name']} ${order['last_name']}</td>
                            <td>${order['line1']}, ${order['line2']}, ${order['city']} </td>
                            <td>${order['phone']} </td>
                            <td>${order['payment_method']}</td>
                            <td>${order['paid']}</td>
                            <td>${order['debt']}</td>
                            <td>${order['total']}đ</td>
                            <td style="color: ${color}">${order['status']}</td>
                            <td>${order['order_date']}</td>
                            <td>
                                <a href="" class="btn-detail-order" order-id="${order['order_id']}"><i class="fas fa-info-circle"></i></a>
                            </td>
                        </tr>
                    `;
            });
            contentBody.innerHTML = order.join('');
            openOrderDetail();
            changeStatus();
        }
    });
}
function searchOrder() {
    let name = document.querySelector('.action h2');
    let inputSearch = document.querySelector('#search');
    if (inputSearch && name) {
        inputSearch.addEventListener('input', (e) => {
            if (name.innerText.toLowerCase() == 'order') {
                fetchDataOrder({}, inputSearch.value);
            }
        });
    }
}

function start() {
    openOrderDetail();
    changeStatus();
    searchOrder();
}

start();