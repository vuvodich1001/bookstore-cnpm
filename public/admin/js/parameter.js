const formParameter = document.querySelector('#form-parameter');
const btnCreateParameter = document.querySelector('.btn-create-parameter');
let parameterId;
function validateParameter() {
  if (formParameter) {
    Validator({
      form: '#form-parameter',
      rules: [isRequired('#code'), isRequired('#value')],
      onSubmit(data) {
        if (formParameter.getAttribute('name') == 'create') {
          fetchDataParameter('post', {
            method: 'post',
            body: data,
          });
        } else {
          fetchDataParameter(
            'put',
            {
              method: 'post',
              body: data,
            },
            parameterId
          );
        }
      },
    });
  }
}

function fetchDataParameter(type, data = {}, id) {
  let url = '';
  switch (type) {
    case 'search':
      url = `index.php?controller=parameter&action=searchParameter&name=${id}`;
      break;
    case 'put':
      url = `index.php?controller=parameter&action=updateParameter&id=${id}`;
      break;
    case 'post':
      url = 'index.php?controller=parameter&action=createParameter';
      break;
    case 'delete':
      url = `index.php?controller=parameter&action=deleteParameter&id=${id}`;
      break;
  }
  fetch(url, data)
    .then((response) => response.json())
    .then((posts) => {
      const contentBody = document.querySelector('.content-body');
      const parameters = posts.map((para) => {
        return `
                <tr>
                    <td>${para.parameter_id}</td>
                    <td>${para.code}</td>
                    <td>${para.value}</td>
                    <td>${para.enable}</td>
                    <td><a class="btn-delete-parameter" parameter-id="${para.parameter_id}" href=""><i class="fas fa-trash-alt"></i></a>
                        <a class="btn-update-parameter" parameter-id="${para.parameter_id}" href=""><i class="fas fa-edit"></i></a>
                    </td>
                </tr>
                `;
      });
      contentBody.innerHTML = parameters.join('');
      modal.classList.remove('modal-active');
      formParameter.reset();
      deleteParameter();
      updateParameter();
    });
}

function createParameter() {
  if (formParameter) {
    btnCreate.addEventListener('click', (e) => {
      modal.classList.add('modal-active');
      btnCreateParameter.textContent = 'Create';
      formParameter.setAttribute('name', 'create');
    });

    btnCancel.addEventListener('click', (e) => {
      e.preventDefault();
      modal.classList.remove('modal-active');
      formParameter.reset();
    });
  }
}

function deleteParameter() {
  let btnDeleteParameters = document.querySelectorAll('.btn-delete-parameter');
  if (btnDeleteParameters) {
    btnDeleteParameters.forEach((btnDeleteParameter) => {
      btnDeleteParameter.addEventListener('click', (e) => {
        e.preventDefault();
        let check = confirm('Do you want to delete this parameter!');
        if (check) {
          let parameterId = btnDeleteParameter.getAttribute('parameter-id');
          fetchDataParameter('delete', {}, parameterId);
        }
      });
    });
  }
}

async function getAllParameter() {
  const parameters = await fetch(
    'index.php?controller=parameter&action=getAllParameter'
  )
    .then((response) => response.json())
    .then((posts) => {
      return posts;
    });
  return parameters;
}

function updateParameter() {
  let btnUpdateParameters = document.querySelectorAll('.btn-update-parameter');
  if (btnUpdateParameters) {
    btnUpdateParameters.forEach((btnUpdateParameter) => {
      btnUpdateParameter.addEventListener('click', (e) => {
        e.preventDefault();
        btnCreate.click();
        btnCreateParameter.textContent = 'Update';
        formParameter.setAttribute('name', 'update');
        parameterId = btnUpdateParameter.getAttribute('parameter-id');
        getAllParameter().then((parameters) => {
          parameters.forEach((parameter) => {
            if (parameter.parameter_id == parameterId) {
              let code = document.querySelector('#code');
              let value = document.querySelector('#value');
              let enable = document.querySelector('#enable');
              code.value = parameter.code;
              value.value = parameter.value;
              enable.value = parameter.enable;
            }
          });
        });
      });
    });
  }
}

function searchParameter() {
  // let btnSearch = document.querySelector('.btn-search');
  let name = document.querySelector('.action h2');
  let inputSearch = document.querySelector('#search');
  if (inputSearch && name) {
    inputSearch.addEventListener('input', (e) => {
      if (name.innerText.toLowerCase() == 'parameter') {
        fetchDataParameter('search', {}, inputSearch.value);
      }
    });
  }
}
function start() {
  validateParameter();
  createParameter();
  deleteParameter();
  updateParameter();
  searchParameter();
}

start();
