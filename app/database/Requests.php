<?php


class Requests
{
    /**
     * @param $tableName
     * @param $data array
     * @return string
     */
    public static function insert($tableName, $data)
    {
        $count = 0;
        $sql = "";

        $sql .= "INSERT INTO `$tableName` (";

        foreach ($data as $column => $value) {
            if ($count)
                $sql .= ", `$column`";
            else
                $sql .= "`$column`";

            $count = 1;
        }

        $sql .= ") VALUES (";
        $count = 0;

        foreach ($data as $column => $value) {
            if ($count)
                $sql .= ", '$value'";
            else
                $sql .= "'$value'";

            $count = 1;
        }

        $sql .= ")";

        return $sql;
    }

    public static function getAll($tableName)
    {
        $sql = "SELECT * FROM `$tableName`";

        return $sql;
    }

    public static function getAllRevert($tableName)
    {
        $sql = "SELECT * FROM `$tableName` ORDER BY `id` DESC";

        return $sql;
    }

    public static function getLastN($tableName, $n)
    {
        $sql = "SELECT * FROM `$tableName` ORDER BY `id` DESC LIMIT $n";

        return $sql;
    }

    public static function getLastHours($tableName, $hours)
    {
        $time = date_create(date('Y-m-d H:i:s'));
        $time = date_modify($time, "-" . $hours . " Hour");
        $newTime = $time->format("Y-m-d H:i:s");

        $sql = "SELECT * FROM `$tableName` WHERE `time_key` > '$newTime'";

        return $sql;
    }

    public static function getLastDays($tableName, $days)
    {
        $time = date_create(date('Y-m-d H:i:s'));
        $time = date_modify($time, "-" . $days . " Day");
        $newTime = $time->format("Y-m-d H:i:s");

        $sql = "SELECT * FROM `$tableName` WHERE `time_key` > '$newTime'";

        return $sql;
    }

    public static function getById($tableName, $id)
    {
        $sql = "SELECT * FROM `$tableName` WHERE `id` = $id";

        return $sql;
    }

    public static function getByEmail($tableName, $email)
    {
        $sql = "SELECT * FROM `$tableName` WHERE `email` = '$email'";

        return $sql;
    }
}