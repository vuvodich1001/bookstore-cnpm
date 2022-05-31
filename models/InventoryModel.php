<?php

class InventoryModel extends BaseModel {
    const TABLE = 'inventory';

    public function getAll($select = ['*'], $orderBy = [], $limit = 15) {
        return $this->all(self::TABLE, $select = ['*'], $orderBy = [], $limit = 15);
    }
    
    public function createInventory($data) {
        $this->create(self::TABLE, $data);
    }


}
