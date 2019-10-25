<?php


class UsersTable
{
    private static $tableName = 'users';

    /**
     * @param $object User
     * @return int|string
     */
    public static function insert($object)
    {
        $data = [
            'email' => $object->getEmail(),
            'password' => $object->getPassword()
        ];

        $db = new Database();

        $sql = Requests::insert(self::$tableName, $data);
        $db->query($sql);

        return $db->getInsertId();
    }

    public static function getById($id)
    {
        $db = new Database();

        $sql = Requests::getById(self::$tableName, $id);

        return $db->getQueryArray($sql);
    }

    public static function getByEmail($email)
    {
        $db = new Database();

        $sql = Requests::getByEmail(self::$tableName, $email);

        return $db->getQueryArray($sql);
    }
}