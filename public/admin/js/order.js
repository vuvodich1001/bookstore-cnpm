let btnDetailOrders = document.querySelectorAll('.btn-detail-order');
let btnShippings = document.querySelectorAll('.btn-shipping-status');
let orderId;

function openOrderDetail() {
  btnDetailOrders = document.querySelectorAll('.btn-detail-order');
  if (btnDetailOrders) {
    btnDetailOrders.forEach((btnDetailOrder) => {
      btnDetailOrder.addEventListener('click', (e) => {
        e.preventDefault();
        modal.classList.add('modal-active');
        orderId = btnDetailOrder.getAttribute('order-id');
        fetch(`index.php?controller=order&action=orderDetail&id=${orderId}`)
          .then((response) => response.json())
          .then((results) => {
            let detail = document.querySelector('.detail-body');
            let orderDetails = results.map((result) => {
              return `
                              <tr>
                                  <td>${result.title}</td>
                                  <td>${result.quantity}</td>
                                  <td>${result.price}</td>
                                  <td>${result.subtotal}</td>
                            </tr>
                          `;
            });
            detail.innerHTML = orderDetails.join('');
          });
      });
    });
    if (btnCancel) {
      btnCancel.addEventListener('click', (e) => {
        e.preventDefault();
        modal.classList.remove('modal-active');
      });
    }
  }
}

function createBill(orderId, type) {
  let modal = document.querySelectorAll('.modal');
  let btnSubmitBill = document.querySelector('.btn-submit-bill');
  let paymentName = document.querySelector('.payment-name');
  let paymentPhone = document.querySelector('.payment-phone');
  let paymentEmail = document.querySelector('.payment-email');
  let paymentPaid = document.querySelector('.payment-paid');
  let total = 0;
  let totalDebt = 0;
  let totalPaid = 0;
  modal[1].classList.add('modal-active');
  fetch(
    `index.php?controller=customer&action=getCustomerByOrderId&id=${orderId}`
  )
    .then((res) => res.json())
    .then((result) => {
      paymentName.value = `${result.first_name} ${result.last_name}`;
      paymentPhone.value = result.phone;
      paymentEmail.value = result.email;
      paymentPaid.value = result.debt;
      total = result.total;
      totalDebt = result.debt;
      totalPaid = result.paid;
    });
  btnSubmitBill.onclick = function (e) {
    modal[1].classList.remove('modal-active');
    let formData = new FormData();
    if (totalDebt > 0) {
      if (Number(paymentPaid.value) > totalDebt) {
        console.log(totalDebt, paymentPaid.value);
        alert('S??? ti???n tr??? v?????t qu?? s??? ti???n n???');
        return;
      }
      let debt = Number(totalDebt) - Number(paymentPaid.value);
      let paid = Number(totalPaid) + Number(paymentPaid.value);
      formData.append('debt', debt);
      formData.append('paid', paid);
    } else {
      formData.append('paid', paymentPaid.value);
      formData.append(
        'debt',
        paymentPaid.value < total ? total - paymentPaid.value : 0.0
      );
    }
    formData.append('orderId', orderId);
    fetch('index.php?controller=order&action=createBill', {
      method: 'POST',
      body: formData,
    })
      .then((res) => res.json())
      .then((result) => {
        if (typeof result == 'object') {
          alert(`S??? ti???n n??? c???a kh??ch h??ng v?????t qu?? ${result.max}`);
        } else {
          console.log(result);
          alert(`Thanh to??n cho kh??ch h??ng c?? orderId = ${orderId}`);
          location.href = 'http://localhost/bookstore-cnpm/admin/order';
        }
      });
  };
}

function changeStatus() {
  let btnSuccesses = document.querySelectorAll('.btn-success-status');
  if (btnSuccesses) {
    btnSuccesses.forEach((btnSuccess) => {
      btnSuccess.addEventListener('click', (e) => {
        e.preventDefault();
        let orderId = btnSuccess.getAttribute('order-id');
        let type = 'debit';
        if (!e.target.parentElement.classList.contains('btn-bill')) {
          type = 'normal';
          check = confirm('B???n ???? ho??n th??nh ????n h??ng n??y r???i ph???i kh??ng!!!');
          let orderStatus = document.querySelector(`.order-status-${orderId}`);
          if (check) {
            orderStatus.textContent = 'Giao h??ng th??nh c??ng';
            orderStatus.classList.remove('text-info');
            orderStatus.classList.add('text-success');
            btnSuccess.remove();
            fetch(
              `index.php?controller=order&action=changeStatusSuccess&id=${orderId}`
            );
          }
        }
        //show modal thu tien
        createBill(orderId, type);
      });
    });
  }

  if (btnShippings) {
    btnShippings.forEach((btnShipping) => {
      btnShipping.addEventListener('click', (e) => {
        e.preventDefault();
        let check = confirm('B???n ??ang giao ????n h??ng n??y r???i ph???i kh??ng!!!');
        let orderId = btnShipping.getAttribute('order-id');
        let orderStatus = document.querySelector(`.order-status-${orderId}`);
        if (check) {
          orderStatus.textContent = '??ang giao h??ng';
          orderStatus.classList.remove('text-primary');
          orderStatus.classList.add('text-info');
          btnShipping.remove();
          fetch(
            `index.php?controller=order&action=changeStatusShipping&id=${orderId}`
          );
        }
      });
    });
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
          let color = '';
          if (order['status'] == '??ang x??? l??') color = '#17a2b8';
          else if (order['status'] == 'Giao h??ng th??nh c??ng') color = '#28a745';
          else if (order['status'] == '??ang giao h??ng') color = '#17a2b8';
          else if (order['status'] == '???? thanh to??n') color = '#ffc107';
          else if (order['status'] == '???? hu???') color = '#dc3545';

          if (
            order['status'] == '??ang x??? l??' ||
            order['status'] == '???? thanh to??n'
          )
            return `
                  <tr>
                      <td>${order['order_id']}</td>
                      <td>${order['first_name']} ${order['last_name']}</td>
                      <td>${order['line1']}, ${order['line2']}, ${
              order['city']
            } </td>
                      <td>${order['phone']} </td>
                      <td>${order['payment_method']}</td>
                      <td>${order['total']}??</td>
                      <td style="color: ${color}" class="order-status-${
              order.order_id
            }">${order['status']}</td>
                      <td>${order['paid']}</td>
                      <td>${order['debt']}</td>
                      <td>${order['order_date']}</td>
                      <td>
                          <a href="" class="btn-detail-order" order-id="${
                            order['order_id']
                          }"><i class="fas fa-info-circle"></i></a>
                          ${
                            order['debt'] > 0
                              ? `<a href="" class="btn-success-status btn-bill" order-id="${order.order_id}}">
                              <i class="fa-solid fa-hand-holding-dollar"></i></a>`
                              : ''
                          }
                          <a href="" class="btn-success-status" order-id="${
                            order['order_id']
                          }"><i class="far fa-check-circle"></i></a>
                          <a href="" class="btn-shipping-status" order-id="${
                            order['order_id']
                          }"><i class="fas fa-shipping-fast"></i></a>
                      </td>
                  </tr>
                        `;
          else if (order['status'] == '??ang giao h??ng') {
            return `
                <tr>
                    <td>${order['order_id']}</td>
                    <td>${order['first_name']} ${order['last_name']}</td>
                    <td>${order['line1']}, ${order['line2']}, ${
              order['city']
            } </td>
                    <td>${order['phone']} </td>
                    <td>${order['payment_method']}</td>
                    <td>${order['total']}??</td>
                    <td style="color: ${color}" class="order-status-${
              order.order_id
            }">${order['status']}</td>
                    <td>${order['paid']}</td>
                    <td>${order['debt']}</td>
                    <td>${order['order_date']}</td>
                    <td>
                        <a href="" class="btn-detail-order" order-id="${
                          order['order_id']
                        }"><i class="fas fa-info-circle"></i></a>
                        ${
                          order['debt'] > 0
                            ? `<a href="" class="btn-success-status btn-bill" order-id="${order.order_id}}"><i class="fa-solid fa-hand-holding-dollar"></i></a>`
                            : ''
                        }
                        <a href="" class="btn-success-status" order-id="${
                          order['order_id']
                        }"><i class="far fa-check-circle"></i></a>
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
            <td>${order['total']}??</td>
            <td style="color: ${color}" class="order-status-${
            order.order_id
          }">${order['status']}</td>
            <td>${order['paid']}</td>
            <td>${order['debt']}</td>
            <td>${order['order_date']}</td>
              <td>
                  <a href="" class="btn-detail-order" order-id="${
                    order['order_id']
                  }"><i class="fas fa-info-circle"></i></a>
                  ${
                    order['debt'] > 0
                      ? `<a href="" class="btn-success-status btn-bill" order-id="${order.order_id}}"><i class="fa-solid fa-hand-holding-dollar"></i></a>`
                      : ''
                  }
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
