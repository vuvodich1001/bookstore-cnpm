<?php

class ReportModel extends BaseModel {
    const TABLE = 'inventoty_report';

    public function getImportSumByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "select COUNT(total) as total from inventory 
                where book_id = :bookId and MONTH(receive_date) = :month and YEAR(receive_date) = :year
                group by book_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['bookId' => $bookId, 'month' => $month, 'year' => $year]);
        return $stmt->fetch()['total'];
    }

    public function getSaleSumByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "select COUNT(od.quantity) as total from order_detal od
                join book_order as bo on bo.order_id = od.order_id
                where book_id = :bookId and MONTH(order_date) = :month and YEAR(receive_date) = :year and bo.status = 'Giao hàng thành công'
                group by od.book_id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['bookId' => $bookId, 'month' => $month, , 'year' => $year]);
        return $stmt->fetch()['total'];
    }

    public function getDefaultFinalRemain() {

    }

    public function deleteByBook_IdAndMonthAndYear($bookId, $month, $year) {
        $sql = "delete from inventory_report where book_id = :bookId and MONTH(order_date) = :month and YEAR(receive_date) = :year";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['bookId' => $bookId, 'month' => $month, , 'year' => $year]);
    }

    public function saveFinalRemainByBook_IdAndMonthAndYear($bookId, $month, $year, $finalRemain) {
        self::deleteByBook_IdAndMonthAndYear($bookId, $month, $year);

        $data = [
            'month' => $month,
            'year' => $year,
            'book_id' => $bookId,
            'final_remain' => $finalRemain
        ];

        $this->create(self::TABLE, $data);
    }
}