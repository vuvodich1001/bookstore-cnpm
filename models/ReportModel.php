<?php

class ReportModel extends BaseModel {

    public function getInventoryReportByMonth($bookId, $month, $year) {
        $sql1 =  'select sum(migrate_quantity) as total from inventory 
    where year(purchase_date) = :year and month(purchase_date) = :month 
    and book_id = :bookId limit 1';
        $stmt1 = $this->db->prepare($sql1);
        $stmt1->execute(['year' => $year, 'month' => $month, 'bookId' => $bookId]);
        $migrate = $stmt1->fetch()['total'];

        $sql2 = 'select sum(quantity) as total from book_order b join order_detail o on b.order_id = o.order_id 
    where year(b.order_date) = :year and month(b.order_date) = :month and book_id = :bookId limit 1';
        $stmt2 = $this->db->prepare($sql2);
        $stmt2->execute(['year' => $year, 'month' => $month, 'bookId' => $bookId]);
        $sold = $stmt2->fetch()['total'];

        $sql3 = 'select sum(migrate_quantity) as total from inventory 
    where year(purchase_date) <= :year 
    and month(purchase_date) < :month and book_id = :bookId limit 1';
        $stmt3 = $this->db->prepare($sql3);
        $stmt3->execute(['year' => $year, 'month' => $month, 'bookId' => $bookId]);
        $totalMigrate = $stmt3->fetch()['total'];

        $sql4 = 'select sum(quantity) as total from book_order b join order_detail o on b.order_id = o.order_id 
        where year(b.order_date) <= :year and month(b.order_date) < :month and book_id = :bookId limit 1';
        $stmt4 = $this->db->prepare($sql4);
        $stmt4->execute(['year' => $year, 'month' => $month, 'bookId' => $bookId]);
        $totalSold = $stmt4->fetch()['total'];
        return [
            'bookId' => $bookId,
            'head' => $totalMigrate - $totalSold,
            'growth' => $migrate - $sold,
            'last' => ($totalMigrate - $totalSold) + ($migrate - $sold)
        ];
    }

    public function getDebtReportByMonth($customerId, $month, $year) {
        $sql1 =  'select sum(debt) as total
         from book_order 
        where year(payment_date) = :year and month(payment_date) = :month and debt > 0
        and customer_id = :customerId 
        group by customer_id
        limit 1';
        $stmt1 = $this->db->prepare($sql1);
        $stmt1->execute(['year' => $year, 'month' => $month, 'customerId' => $customerId]);
        $debt = $stmt1->fetch()['total'] ?? 0;

        $sql2 = 'select sum(paid) as paid from book_order 
    where year(payment_date) = :year and month(payment_date) = :month and debt > 0
    and customer_id = :customerId 
    group by customer_id
    limit 1';
        $stmt2 = $this->db->prepare($sql2);
        $stmt2->execute(['year' => $year, 'month' => $month, 'customerId' => $customerId]);
        $paid = $stmt2->fetch()['paid'] ?? 0;

        $sql3 =  'select sum(debt) as debt from book_order 
        where year(payment_date) <= :year and month(payment_date) < :month and debt > 0
        and customer_id = :customerId 
        group by customer_id
        limit 1';
        $stmt3 = $this->db->prepare($sql3);
        $stmt3->execute(['year' => $year, 'month' => $month, 'customerId' => $customerId]);
        $totalDebt = $stmt3->fetch()['debt'] ?? 0;

        $sql4 = 'select sum(paid) as paid from book_order
        where year(payment_date) <= :year and month(payment_date) < :month  and debt > 0
        and customer_id = :customerId 
        group by customer_id
        limit 1';
        $stmt4 = $this->db->prepare($sql4);
        $stmt4->execute(['year' => $year, 'month' => $month, 'customerId' => $customerId]);
        $totalPaid = $stmt4->fetch()['paid'] ?? 0;
        // die();
        return [
            'customerId' => $customerId,
            'head' => $totalDebt,
            'growth' => $debt,
            'last' => $totalDebt + $debt
        ];
    }
}
