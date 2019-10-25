<?php


class TimeInterval
{
    private $firstDate;
    private $secondDate;
    private $firstTime;
    private $secondTime;

    public function __construct($firstDateTime, $secondDateTime)
    {
        $firstDateArray = explode(" ", $firstDateTime);
        $secondDateArray = explode(" ", $secondDateTime);

        $this->firstDate = $firstDateArray[0];
        $this->secondDate = $secondDateArray[0];
        $this->firstTime = $firstDateArray[1];
        $this->secondTime = $secondDateArray[1];
    }

    public function getTimeInterval() {
        return DateFormat::edit_date($this->firstDate) . ' ' . $this->firstTime . " - " . $this->secondTime;
    }

    public function getDaysInterval() {
        return DateFormat::edit_date($this->firstDate) . ' - ' . DateFormat::edit_date($this->secondDate);
    }
}