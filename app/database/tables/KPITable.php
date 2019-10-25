<?php


class KPITable
{
    private static $tableName = 'kpi';

    /**
     * @param $object KPI
     * @return int|string
     */
    public static function insert($object)
    {
        $data = [
            'user_email' => $object->getUserEmail(),
            'beeline_value' => $object->getBeelineValue(),
            'mf_value' => $object->getMfValue(),
            'mts_value' => $object->getMtsValue(),
            'time_key' => $object->getTimeKey(),
            'test' => $object->getTest()
        ];

        $db = new Database();

        $sql = Requests::insert(self::$tableName, $data);
        $db->query($sql);

        return $db->getInsertId();
    }

    public static function getAll()
    {
        $db = new Database();

        $sql = Requests::getAll(self::$tableName);

        return $db->getQueryArray($sql);
    }

    public static function getAllRevert()
    {
        $db = new Database();

        $sql = Requests::getAllRevert(self::$tableName);

        return $db->getQueryArray($sql);
    }

    public static function getLastN($n)
    {
        $db = new Database();

        $sql = Requests::getLastN(self::$tableName, $n);

        return $db->getQueryArray($sql);
    }

    public static function getLastHours($hours)
    {
        $db = new Database();

        $sql = Requests::getLastHours(self::$tableName, $hours);

        return $db->getQueryArray($sql);
    }

    public static function getLastDays($days)
    {
        $db = new Database();

        $sql = Requests::getLastDays(self::$tableName, $days);

        return $db->getQueryArray($sql);
    }

    public static function getById($id)
    {
        $db = new Database();

        $sql = Requests::getById(self::$tableName, $id);

        return $db->getQueryArray($sql);
    }
}