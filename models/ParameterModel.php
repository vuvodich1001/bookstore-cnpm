<?php

// use function PHPSTORM_META\sql_injection_subst;

class ParameterModel extends BaseModel {
    const TABLE = 'parameter';
    public function getAll($select = ['*'], $orderBy = [], $limit = 15) {
        return $this->all(self::TABLE, $select, $orderBy, $limit);
    }

    public function getById($id) {
        return $this->find(self::TABLE, $id);
    }

    public function createParameter($data) {
        return $this->create(self::TABLE, $data);
    }

    public function updateParameter($id, $data) {
        return $this->update(self::TABLE, $id, $data);
    }

    public function deleteParameter($id) {
        return $this->destroy(self::TABLE, $id);
    }

    public function searchParameter($name) {
        $sql = "select *
                from parameter
                where code like :name
                ";
        $stmt = $this->db->prepare($sql);
        $stmt->execute(['name' => '%' . $name . '%']);
        $parameters = [];
        while ($row = $stmt->fetch()) {
            $parameters[] = $row;
        }
        return $parameters;
    }
}
