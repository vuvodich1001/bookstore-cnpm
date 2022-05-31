<?php
$database = new Database();
$db = $database->connect();
$sql = "select * from parameter";
$result = $db->query($sql);
$data = [];
while ($row = $result->fetch()) {
    $code = $row['code'];
    $value = $row['value'];
    if ($row['enable'] == 1)
        $GLOBALS[$code] = $value;
}
