<?php
class ParameterController extends BaseController {

    private $parameterModel;
    public function __construct() {
        parent::__construct();
        $this->loadModel('ParameterModel');
        $this->parameterModel = new ParameterModel();
        $this->userId = $_SESSION['user']['user_id'];
    }
    // admin
    public function index() {
        $parameters = $this->parameterModel->getAll(['*'], [], 100);
        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);
        return $this->view('admin.parameters.show', ['parameters' => $parameters, 'roles' => $roles]);
    }

    public function getAllParameter() {
        $parameters = $this->parameterModel->getAll(['*'], [], 100);
        echo json_encode($parameters);
    }

    public function createParameter() {
        $code = $_POST['code'];
        $value = $_POST['value'];
        $enable = $_POST['enable'];
        $data = [
            'code' => $code,
            'value' => $value,
            'enable' => $enable,
        ];
        $this->parameterModel->createParameter($data);
        $parameters = $this->parameterModel->getAll();
        echo json_encode($parameters);
    }

    public function updateParameter() {
        $id = $_GET['id'];
        $existParameter = $this->parameterModel->getById($id);
        // update book
        $code = $_POST['code'];
        $value = $_POST['value'];
        $enable = $_POST['enable'];
        $data = [
            'code' => $code,
            'value' => $value,
            'enable' => $enable,
        ];
        $this->parameterModel->updateParameter($id, $data);
        $parameters = $this->parameterModel->getAll(['*'], [], 100);
        echo json_encode($parameters);
    }

    public function deleteParameter() {
        $id = $_GET['id'];
        $this->parameterModel->deleteParameter($id);
        $parameters = $this->parameterModel->getAll();
        echo json_encode($parameters);
    }

    public function searchParameter() {
        $name = $_GET['name'];
        $parameters = $this->parameterModel->searchParameter($name);
        echo json_encode($parameters);
    }
}
