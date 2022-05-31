<?php
class InventoryController extends BaseController {
    private $inventoryModel;
    private $supplierModel;
    private $categoryModel;
    private $bookModel;

    public function __construct() {
        parent::__construct();
        $this->loadModel('InventoryModel');
        $this->loadModel('SupplierModel');
        $this->loadModel('CategoryModel');
        $this->loadModel('BookModel');

        $this->inventoryModel = new InventoryModel();
        $this->supplierModel = new SupplierModel();
        $this->categoryModel = new CategoryModel();
        $this->bookModel = new BookModel();
        $this->userId = $_SESSION['user']['user_id'];
    }

    public function index() {
        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);
        $inventories = $this->inventoryModel->getAll();
        return $this->view('admin.inventories.show', ['inventories' => $inventories, 'roles' => $roles]);
    }

    public function import() {
        $categories = $this->categoryModel->getAll();
        $suppliers = $this->supplierModel->getAll();
        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);

        return $this->view('admin.inventories.import', ['categories' => $categories, 'suppliers' => $suppliers, 'roles' => $roles]);
    }

    public function importBook() {
        $bookId = $_POST['book_id'];
        $total = $_POST['total'];
        $migrateQuantity = $_POST['migrate_quantity'];
        $supplierId = $_POST['supplier'];
        $price = $_POST['price'];
        $data = [
            'book_id' => $bookId,
            'supplier_id' => $supplierId,
            'purchase_date' => date("Y-m-d"),
            'receive_date' => date("Y-m-d"),
            'total' => $total,
            'migrate_quantity' => $migrateQuantity,
            'price' => $price
        ];

        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);
        $inventories = $this->inventoryModel->getAll();

        if ($this->bookModel->getCurrentQuantity($bookId) < $GLOBALS['MIN_REMAIN']) {
            $this->bookModel->updateQuantityAndPrice($bookId, $migrateQuantity, $price);
            $this->inventoryModel->createInventory($data);
            $message = "Import Book Sucessfully";
            $book = $this->bookModel->getById($bookId);
            return $this->view("admin.inventories.show", ["message" => $message, "book" => $book, "roles" => $roles, "inventories" => $inventories]);
        } else {
            $error = "The quantity of the product must be less than " . $GLOBALS['MIN_REMAIN'];
            return $this->view("admin.inventories.show", ["error" => $error, "roles" => $roles, "inventories" => $inventories]);
        }
    }
}
