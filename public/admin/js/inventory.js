function calculateTotal() {
  let price = document.querySelector('#price-import');
  let quantity = document.querySelector('#migrate-quantity');
  let total = document.querySelector('#total-import');
  if (quantity) {
    quantity.onblur = function (e) {
      total.value = price.value * quantity.value;
    };
  }
}

function start() {
  calculateTotal();
}

start();
