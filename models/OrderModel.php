<?php
class OrderModel extends BaseModel {
    const TABLE_ORDER = 'book_order';
    const TABLE_ORDER_DETAIL = 'order_detail';
    const TABLE_CUSTOMER_ADDRESS = 'customer_address';
    const TABLE_BOOK = 'BOOK';

    public function getAll($select = ['*'], $orderBy = [], $limit = 30) {
        return $this->all(self::TABLE_ORDER, $select, $orderBy, $limit);
    }

    public function revenue() {
        $sql = "select sum(total) as revenue from book_order where status != 'Đang xử lí' and status != 'Đã hủy'";
        $stmt = $this->db->query($sql);
        $stmt->execute();
        return $stmt->fetch()['revenue'];
    }

    public function getOrderId($customerId) {
        $sql = "select * from book_order where customer_id = :customer_id order by order_date desc limit 1";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['customer_id' => $customerId]);
        return $stmt->fetch()['order_id'];
    }

    public function changeStatus($data) {
        $sql = "update book_order 
                set status = :status where order_id = :order_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute($data);
    }
    public function findById($orderId) {
        $sql = "select * from book_order where order_id = :order_id limit 1";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['order_id' => $orderId]);
        return $stmt->fetch();
    }

    public function createOrder($shippingAddress, $orderFee, $orderDetail, $customerId, $check) {
        $bookOrder = array_merge($shippingAddress, $orderFee);
        $this->create(self::TABLE_ORDER, $bookOrder);
        // check = 0 => not exists address before 
        if ($check == 0) $this->create(self::TABLE_CUSTOMER_ADDRESS, $shippingAddress);
        $orderId = $this->getOrderId($customerId);
        foreach ($orderDetail as $detail) {
            $detail['order_id'] = $orderId;
            $this->create(self::TABLE_ORDER_DETAIL, $detail);
        }
    }

    public function checkDuplicateAddress($address) {
        $placeHolders = implode(' and ', array_map(function ($value) {
            return $value . '=:' . $value;
        }, array_keys($address)));
        $sql = "select * from customer_address where $placeHolders";
        $stmt = $this->db->prepare($sql);
        $stmt->execute($address);
        return $stmt->rowCount();
    }

    public function findCustomerAddress($addressId) {
        $sql = "select * from customer_address where address_id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['id' => $addressId]);
        $address = $stmt->fetch();
        unset($address['address_id']);
        return $address;
    }

    public function getAllOrderByCustomerId($customerId) {
        $sql = "select * from book_order where customer_id = :customer_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['customer_id' => $customerId]);
        $orders = [];
        while ($row = $stmt->fetch()) {
            $orders[] = $row;
        }
        return $orders;
    }

    public function getAllOrderDetailByOrderId($orderId) {
        $sql = "select * from order_detail o join book b on o.book_id = b.book_id where order_id = :order_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['order_id' => $orderId]);
        $orderDetails = [];
        while ($row = $stmt->fetch()) {
            $orderDetails[] = $row;
        }
        return $orderDetails;
    }

    public function cancelOrder($id) {
        $sql = "update book_order set status='Đã hủy' where order_id = :order_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['order_id' => $id]);
    }

    public function createBill($orderId, $paid, $debt) {
        $sql = "update book_order
         set paid = :paid, debt = :debt, payment_date = CURRENT_TIME() where order_id = :orderId";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['orderId' => $orderId, 'paid' => $paid, 'debt' => $debt]);
    }
    public function searchOrder($name) {
        $sql = "select *
                from book_order
                where first_name like :name or last_name like :name or status like :name
                order by status desc";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['name' => '%' . $name . '%']);
        $orders = [];
        while ($row = $stmt->fetch()) {
            $row['order_date'] = date('d/m/Y', strtotime($row['order_date']));
            $orders[] = $row;
        }
        return $orders;
    }

    public function checkRemainBookQuantity($customerId, $bookId, $quantity) {
        $book = $this->find(self::TABLE_BOOK, $bookId);
        $bookQuantityRemain = $book['current_quantity'] - $quantity;

        if ($bookQuantityRemain < $GLOBALS['MIN_CURRENT_BOOK']) {
            return 'Số lượng sách tồn còn lại không đủ để mua hàng!!!';
        }

        return 1;
    }
}
