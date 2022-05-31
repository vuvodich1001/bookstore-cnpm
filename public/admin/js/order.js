let btnDetailOrders = document.querySelectorAll('.btn-detail-order');
let btnSuccesses = document.querySelectorAll('.btn-success-status');
let btnShippings = document.querySelectorAll('.btn-shipping-status');
function openOrderDetail() {
  if (btnDetailOrders) {
    btnDetailOrders.forEach((btnDetailOrder) => {
      btnDetailOrder.addEventListener('click', (e) => {
        e.preventDefault();
        modal.classList.add('modal-active');
        let orderId = btnDetailOrder.getAttribute('order-id');
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

  btnSubmitBill.addEventListener('click', (e) => {
    modal[1].classList.remove('modal-active');
    let formData = new FormData();
    if (totalDebt > 0) {
      let debt = Number(totalDebt) - Number(paymentPaid.value);
      let paid = Number(totalPaid) + Number(paymentPaid.value);
      console.log(paid);
      formData.append('debt', debt);
      formData.append('paid', paid);
    } else {
      formData.append('paid', paymentPaid.value);
      formData.append(
        'debt',
        paymentPaid.value < total ? total - Number(paymentPaid.value) : 0.0
      );
    }
    formData.append('orderId', orderId);
    fetch('index.php?controller=order&action=createBill', {
      method: 'POST',
      body: formData,
    }).then(() => {
      location.href = 'http://localhost/bookstore-cnpm/admin/order';
    });
  });
}

function changeStatus() {
  if (btnSuccesses) {
    btnSuccesses.forEach((btnSuccess) => {
      btnSuccess.addEventListener('click', (e) => {
        e.preventDefault();
        let orderId = btnSuccess.getAttribute('order-id');
        let type = 'debit';
        if (!e.target.parentElement.classList.contains('btn-bill')) {
          type = 'normal';
          check = confirm('Bạn đã hoàn thành đơn hàng này rồi phải không!!!');
          let orderStatus = document.querySelector(`.order-status-${orderId}`);
          if (check) {
            orderStatus.textContent = 'Giao hàng thành công';
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
        let check = confirm('Bạn đang giao đơn hàng này rồi phải không!!!');
        let orderId = btnShipping.getAttribute('order-id');
        let orderStatus = document.querySelector(`.order-status-${orderId}`);
        if (check) {
          orderStatus.textContent = 'Đang giao hàng';
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

function start() {
  openOrderDetail();
  changeStatus();
}

start();
