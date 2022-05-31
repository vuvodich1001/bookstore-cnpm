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
        $categories = $this->categoryModel->getAll();
        $suppliers = $this->supplierModel->getAll();
        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);

        return $this->view('admin.inventories.show', ['categories' => $categories, 'suppliers' => $suppliers ,'roles' => $roles]);
    }

    public function importBook () {
        $bookId = $_POST['book_id'];
        $purchaseDate = $_POST['purchase_date'];
        $receiveDate = $_POST['receive_date'];
        $total = $_POST['total'];
        $migrateQuantity = $_POST['migrate_quantity'];
        $supplierId = $_POST['supplier'];

        $data = [
            'book_id' => $bookId,
            'supplier_id' => $supplierId,
            'purchase_date' => $purchaseDate,
            'receive_date' => $receiveDate,
            'total' => $total,
            'migrate_quantity' => $migrateQuantity,
        ];

        $this->bookModel->updateQuantity($bookId, $migrateQuantity);
        $this->inventoryModel->createInventory($data);
        
        header("Location: http://localhost/bookstore-cnpm/admin/book");
    }
}
