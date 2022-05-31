<?php

class ReportModel extends BaseModel {
    public function getImportSumByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "select COUNT(total) as total from inventory 
                where book_id = :bookId and MONTH(import_date) = :month and YEAR(import_date) = :year";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['bookId' => $bookId, 'month' => $month, 'year' => $year]);
        return $stmt->fetch()['total'];
    }

    public function getSaleSumByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "select COUNT(od.quantity) as total from order_detail od
                join book_order bo on bo.order_id = od.order_id
                where od.book_id = :bookId and MONTH(bo.order_date) = :month and YEAR(bo.order_date) = :year and bo.status = 'Giao hàng thành công'";
        $stmt = $this->db->prepare($sql);

        $stmt->execute(['bookId' => $bookId, 'month' => $month, 'year' => $year]);

        return $stmt->fetch()['total'];
    }

    public function getFinalRemainByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "select final_remain from inventory_report
                where book_id = :bookId and month = :month and year = :year";
        $stmt = $this->db->prepare($sql);

        $stmt->execute(['bookId' => $bookId, 'month' => $month, 'year' => $year]);

        return $stmt->fetch()['final_remain'];
    }

    public function getFinalRemainByCustomer_IdAndMonthAndYear($customerId, $month, $year) {
        $sql = "select final_remain from customer_debt_report
                where customer_id = :customerId and month = :month and year = :year";
        $stmt = $this->db->prepare($sql);

        $stmt->execute(['customer_id' => $customerId, 'month' => $month, 'year' => $year]);

        return $stmt->fetch()['final_remain'];
    }

    public function getLoanSumByCustomer_IdAndMonthAndYear($customerId, $month, $year) {
        $sql = "select DISTINCT(loan_sum) from inventory_report
                where customer_id = :customerId and month = :month and year = :year";
        $stmt = $this->db->prepare($sql);

        $stmt->execute(['customerId' => $customerId, 'month' => $month, 'year' => $year]);

        return $stmt->fetch()['total'];
    }

    public function getPaymentSumByCustomer_IdAndMonthAndYear($customerId, $month, $year) {
        $sql = "select payment from inventory_report
                where customer_id = :customerId and month = :month and year = :year";
        $stmt = $this->db->prepare($sql);

        $stmt->execute(['customerId' => $customerId, 'month' => $month, 'year' => $year]);

        return $stmt->fetch()['total'];
    }
}