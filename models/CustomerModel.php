<?php
class CustomerModel extends BaseModel {
    const TABLE = 'customer';
    const TABLE_ADDRESS = 'customer_address';
    public function authenticate($username, $password) {
        $sql = "select * from customer where email= :username and password = :password";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['username' => $username, 'password' => $password]);
        return $stmt->rowCount();
    }

    public function getCustomerByUsernameAndPassword($username, $password) {
        $sql = "select * from customer where email = :username and password = :password limit 1";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['username' => $username, 'password' => $password]);
        $customer = [];
        while ($row = $stmt->fetch()) {
            $customer = $row;
        }
        return $customer;
    }

    public function getAll($select = ['*'], $orderBy = [], $limit = 15) {
        return $this->all(self::TABLE, $select, $orderBy, $limit);
    }

    public function getAllDebt($month) {
        $sql = "select c.*, sum(debt) as debt from customer c join book_order b on c.customer_id = b.customer_id
        where month(payment_date) <= :month
        group by c.customer_id
        having sum(debt) > 0";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['month' => $month]);
        $customers = [];
        while ($row = $stmt->fetch()) {
            $customers[] = $row;
        }
        return $customers;
    }

    public function getAllCustomerWithDebt() {
        $sql = "select c.*, sum(debt) as debt from customer c left join book_order b on c.customer_id = b.customer_id
        group by c.customer_id";
        $stmt = $this->db->query($sql);
        $customers = [];
        while ($row = $stmt->fetch()) {
            $customers[] = $row;
        }
        return $customers;
    }

    public function getById($customerId) {
        return $this->find(self::TABLE, $customerId);
    }

    public function updateInfo($customerId, $data) {
        $this->update(self::TABLE, $customerId, $data);
    }

    public function createCustomer($data) {
        $this->create(self::TABLE, $data);
    }

    public function getCustomerAddressById($id) {
        $sql = "select * from customer_address where customer_id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['id' => $id]);
        $address = [];
        while ($row = $stmt->fetch()) {
            $address[] = $row;
        }
        return $address;
    }

    public function getCustomerByOrderId($id) {
        $sql = "select * from customer c join book_order b on c.customer_id = b.customer_id where order_id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['id' => $id]);
        return $stmt->fetch();
    }

    public function getTotalDebtByCustomerId($id) {
        $sql = "select sum(debt) as total from customer c join book_order b on c.customer_id = b.customer_id where c.customer_id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['id' => $id]);
        return $stmt->fetch()['total'];
    }
    public function createNewCustomerAddress($data) {
        $this->create(self::TABLE_ADDRESS, $data);
    }

    public function deleteAddress($id) {
        $sql = "delete from customer_address where address_id = :address_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['address_id' => $id]);
    }
}
