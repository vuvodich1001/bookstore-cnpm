<?php
class HomeController extends BaseController {
    private $orderModel;
    private $reviewModel;
    private $customerModel;
    private $reportModel;
    private $bookModel;

    public function __construct() {
        parent::__construct();
        $this->loadModel('OrderModel');
        $this->loadModel('ReviewModel');
        $this->loadModel('CustomerModel');
        $this->loadModel('ReportModel');
        $this->loadModel('BookModel');
        $this->orderModel = new OrderModel();
        $this->reviewModel = new ReviewModel();
        $this->customerModel = new CustomerModel();
        $this->reportModel = new ReportModel();
        $this->bookModel = new BookModel();
        $this->userId = $_SESSION['user']['user_id'];
    }

    public function index() {
        $roles = $this->getUserModel()->getAllRoleByUserId($this->userId);
        $orders = $this->orderModel->getAll(['*'], ['order_date desc'], 5);
        $reviews = $this->reviewModel->getAll(['*'], ['review_time desc'], 5);
        $totalCustomer = count($this->customerModel->getAll(['*'], [], 50));
        $totalReview = count($this->reviewModel->getAll(['*'], [], 50));
        $totalOrder = count($this->orderModel->getAll(['*'], [], 50));
        $revenue = $this->orderModel->revenue();
        $statistics = [
            'totalCustomer' => $totalCustomer,
            'totalReview' => $totalReview,
            'totalOrder' => $totalOrder,
            'revenue' => $revenue
        ];

        $pendingOrders = array_filter($this->orderModel->getAll(), fn ($order) => $order['status'] == 'Đang xử lí' || $order['status'] == 'Đã thanh toán' ? true : false);
        $pendingReviews = array_filter($this->reviewModel->getAll(), function ($review) {
            $dayReview = date('d', strtotime($review['review_time']));
            $dayNow = date('d', time());
            return $dayReview == $dayNow ? true : false;
        });

        $notifications = [
            'pendingOrders' => $pendingOrders,
            'pendingReviews' => $pendingReviews
        ];

        $textColors = [
            'Đang xử lí' => 'text-primary',
            'Đã thanh toán' => 'text-warning',
            'Giao hàng thành công' => 'text-success',
            'Đang giao hàng' => 'text-info',
            'Đã hủy' => 'text-danger'
        ];

        return $this->view('admin.home.index', [
            'orders' => $orders,
            'reviews' => $reviews,
            'roles' => $roles,
            'statistics' => $statistics,
            'notifications' => $notifications,
            'textColors' => $textColors
        ]);
    }

    public function reportInventoryByDate() {
        $date = $_POST['date'];
        $data = explode('-', $date);
        $year = $data[0];
        $month = $data[1];

        // Inventory Report
        $inventoryReport = [];

        foreach ($this->bookModel->getAll(['book_id']) as $book) {
            $saleTotal = $this->reportModel->getSaleSumByBook_IdAndMonthAndYear($book['book_id'], $month, $year); // get sale total
            $importTotal = $this->reportModel->getImportSumByBook_IdAndMonthAndYear($book['book_id'], $month, $year); // get import total
            $finalRemainPreviousMonth = $this->reportModel->getFinalRemainByBook_IdAndMonthAndYear($book['book_id'], $month - 1, $year); // get final remain previous month, exam: curr = 5 -> previous = 4

            $inventoryReport[] = ['saleTotal' => $saleTotal, 'importTotal' => $importTotal, 'finalRemainPreviousMonth' => $finalRemainPreviousMonth];
        }

        print_r($inventoryReport);
        die();
    }

    public function reportCustomerDebtByDate() {
        $date = $_POST['date'];
        $data = explode('-', $date);
        $year = $data[0];
        $month = $data[1];

        // Inventory Report
        $this->inventoryReport = [];

        foreach ($this->customerModel->getAll(['customer_id']) as $customer) {
            $loanSum = $this->reportModel->getLoanSumByCustomer_IdAndMonthAndYear($customer['customer_id'], $month, $year); // get sale total
            $paymentSum = $this->reportModel->getPaymentSumByCustomer_IdAndMonthAndYear($customer['customer_id'], $month, $year); // get import total
            $finalRemainPreviousMonth = $this->reportModel->getFinalRemainByCustomer_IdAndMonthAndYear($customer['customer_id'], $month - 1, $year); // get final remain previous month, exam: curr = 5 -> previous = 4

            $this->inventoryReport[] = ['loanSum' => $loanSum, 'paymentSum' => $paymentSum, 'finalRemainPreviousMonth' => $finalRemainPreviousMonth];
        }
    }
}
