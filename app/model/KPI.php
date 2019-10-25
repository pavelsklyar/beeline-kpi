<?php


class KPI implements Model
{
    private $id;
    private $userEmail;
    private $beelineValue;
    private $mfValue;
    private $mtsValue;
    private $timeKey;
    private $test;

    /**
     * KPI constructor.
     * @param $userEmail
     * @param $beelineValue
     * @param $mfValue
     * @param $mtsValue
     * @param $timeKey
     * @param $test
     */
    public function __construct($userEmail, $beelineValue, $mfValue, $mtsValue, $timeKey, $test)
    {
        $this->userEmail = $userEmail;
        $this->beelineValue = $beelineValue;
        $this->mfValue = $mfValue;
        $this->mtsValue = $mtsValue;
        $this->timeKey = $timeKey;
        $this->test = $test;
    }


    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getUserEmail()
    {
        return $this->userEmail;
    }

    /**
     * @return mixed
     */
    public function getBeelineValue()
    {
        return $this->beelineValue;
    }

    /**
     * @return mixed
     */
    public function getMfValue()
    {
        return $this->mfValue;
    }

    /**
     * @return mixed
     */
    public function getMtsValue()
    {
        return $this->mtsValue;
    }

    /**
     * @return mixed
     */
    public function getTimeKey()
    {
        return $this->timeKey;
    }

    /**
     * @return mixed
     */
    public function getTest()
    {
        return $this->test;
    }

    public function save()
    {
        return KPITable::insert($this);
    }
}