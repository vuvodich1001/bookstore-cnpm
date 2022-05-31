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

    public function index($inventoryReports = [], $debtReports = []) {
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
            'textColors' => $textColors,
            'inventoryReports' => isset($inventoryReports) ? $inventoryReports : [],
            'debtReports' => isset($debtReports) ? $debtReports : [],
        ]);
    }

    public function reportInventoryByDate() {
        $date = $_POST['date2'];
        $data = explode('-', $date);
        $year = $data[0];
        $month = $data[1];
        $books = $this->bookModel->getAll();

        $inventoryReports = [];

        foreach ($books as $book) {
            $report = $this->reportModel->getInventoryReportByMonth($book['book_id'], $month, $year);
            $report['title'] = $book['title'];
            $inventoryReports[] = $report;
        }
        $this->index($inventoryReports);
    }

    public function reportDebtByDate() {
        $date = $_POST['date'];
        $data = explode('-', $date);
        $year = $data[0];
        $month = $data[1];
        $customers = $this->customerModel->getAllDebt($month);

        $debtReports = [];

        foreach ($customers as $customer) {
            $report = $this->reportModel->getDebtReportByMonth($customer['customer_id'], $month, $year);
            $report['name'] = $customer['first_name'] . ' ' . $customer['last_name'];
            $debtReports[] = $report;
        }


        $this->index([], $debtReports);
    }
}
