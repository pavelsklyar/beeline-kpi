<?php


class MainController
{
    private $numOfData = 12;

    public function index()
    {
        $minutes = array_reverse(KPITable::getLastN($this->numOfData));

        $hoursArray = KPITable::getLastHours($this->numOfData);
        $splitHours = new SplitArray($hoursArray);
        $hours = $splitHours->splitByHours($this->numOfData);

        $daysArray = KPITable::getLastDays($this->numOfData);
        $splitDays = new SplitArray($daysArray);
        $days = $splitDays->splitByDays($this->numOfData);

        if (empty($_SESSION['auth']))
            $view = new View("auth");
        else
            $view = new View("index", ['minutes' => $minutes, 'hours' => $hours, 'days' => $days]);
    }
}