<?php

class InventoryModel extends BaseModel {
    const TABLE = 'inventory';

    public function createInventory($data) {
        $this->create(self::TABLE, $data);
    }
}
