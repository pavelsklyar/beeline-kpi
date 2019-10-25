<?php


class SplitArray
{
    private $array;
    private $newArray = array();
    private $timeArray = array();
    private $currentTime;

    /**
     * SplitArray constructor.
     * @param $array
     */
    public function __construct($array)
    {
        $this->array = $array;
        $this->currentTime = date('Y-m-d H:i:s');
    }

    public function splitByHours($hours)
    {
        $this->startNewArray($hours);
        $this->loadTimeArrayHours($hours);

        $temp = 0;
        $count = 0;

        foreach ($this->array as $item) {
            if ($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1]) {
                $this->loadNewArray($item, $temp);
                $count++;
            }
            else {
                if (!empty($count)) {
                    $this->divNewArray($temp, $count);
                    $count = 0;

                    $temp++;

                    if ($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1]) {
                        $this->loadNewArray($item, $temp);
                        $count++;
                    }
                }
                else {
                    while (!($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1])) {
                        $interval = new TimeInterval($this->timeArray[$temp], $this->timeArray[$temp + 1]);
                        $this->newArray[$temp]['time_key'] =  $interval->getTimeInterval();

                        $temp++;
                    }

                    $this->loadNewArray($item, $temp);
                    $count++;
                }
            }
        }

        $this->divNewArray($temp, $count);

        return $this->newArray;
    }

    public function splitByDays($days)
    {
        $this->startNewArray($days);
        $this->loadTimeArrayDays($days);

        $temp = 0;
        $count = 0;

        foreach ($this->array as $item) {
            if ($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1]) {
                $this->loadNewArrayDays($item, $temp);
                $count++;
            }
            else {
                if (!empty($count)) {
                    $this->divNewArray($temp, $count);
                    $count = 0;

                    $temp++;

                    if ($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1]) {
                        $this->loadNewArrayDays($item, $temp);
                        $count++;
                    }
                }
                else {
                    while (!($item['time_key'] >= $this->timeArray[$temp] && $item['time_key'] < $this->timeArray[$temp + 1])) {
                        $interval = new TimeInterval($this->timeArray[$temp], $this->timeArray[$temp + 1]);
                        $this->newArray[$temp]['time_key'] =  $interval->getDaysInterval();

                        $temp++;
                    }

                    $this->loadNewArrayDays($item, $temp);
                    $count++;
                }
            }
        }

        $this->divNewArray($temp, $count);

        return $this->newArray;
    }

    private function getPastTimeHours($datetime, $hours) {
        $time = date_create($datetime);
        $time = date_modify($time, "-" . $hours . " Hour");
        return $time->format("Y-m-d H:i:s");
    }

    private function getPastTimeDays($datetime, $days) {
        $time = date_create($datetime);
        $time = date_modify($time, "-" . $days . " Day");
        return $time->format("Y-m-d H:i:s");
    }

    private function loadTimeArrayHours($hours) {
        for ($i = 0; $i <= $hours; $i++) {
            $this->timeArray[] = $this->getPastTimeHours($this->currentTime, $i);
        }

        $this->timeArray = array_reverse($this->timeArray);
    }

    private function loadTimeArrayDays($days) {
        for ($i = 0; $i <= $days; $i++) {
            $this->timeArray[] = $this->getPastTimeDays($this->currentTime, $i);
        }

        $this->timeArray = array_reverse($this->timeArray);
    }

    private function startNewArray($numOfData) {
        for ($i = 0; $i < $numOfData; $i++) {
            $this->newArray[$i]['user_email'] = '';
            $this->newArray[$i]['beeline_value'] = 0;
            $this->newArray[$i]['mf_value'] = 0;
            $this->newArray[$i]['mts_value'] = 0;
            $this->newArray[$i]['time_key'] = '';
            $this->newArray[$i]['test'] = 0;
        }
    }

    private function loadNewArray($item, $temp) {
        $this->newArray[$temp]['beeline_value'] += $item['beeline_value'];
        $this->newArray[$temp]['mf_value'] += $item['mf_value'];
        $this->newArray[$temp]['mts_value'] += $item['mts_value'];

        if (empty($this->newArray[$temp]['user_email']))
            $this->newArray[$temp]['user_email'] = $item['user_email'];

        if (empty($this->newArray[$temp]['time_key'])) {
            $interval = new TimeInterval($this->timeArray[$temp], $this->timeArray[$temp + 1]);
            $this->newArray[$temp]['time_key'] =  $interval->getTimeInterval();
        }

        if (empty($this->newArray[$temp]['test']))
            $this->newArray[$temp]['test'] = $item['test'];
    }

    private function loadNewArrayDays($item, $temp) {
        $this->newArray[$temp]['beeline_value'] += $item['beeline_value'];
        $this->newArray[$temp]['mf_value'] += $item['mf_value'];
        $this->newArray[$temp]['mts_value'] += $item['mts_value'];

        if (empty($this->newArray[$temp]['user_email']))
            $this->newArray[$temp]['user_email'] = $item['user_email'];

        if (empty($this->newArray[$temp]['time_key'])) {
            $interval = new TimeInterval($this->timeArray[$temp], $this->timeArray[$temp + 1]);
            $this->newArray[$temp]['time_key'] =  $interval->getDaysInterval();
        }

        if (empty($this->newArray[$temp]['test']))
            $this->newArray[$temp]['test'] = $item['test'];
    }

    private function divNewArray($temp, $count)
    {
        if (!empty($count)) {
            $this->newArray[$temp]['beeline_value'] /= $count;
            $this->newArray[$temp]['mf_value'] /= $count;
            $this->newArray[$temp]['mts_value'] /= $count;

            $this->newArray[$temp]['beeline_value'] = (int)$this->newArray[$temp]['beeline_value'];
            $this->newArray[$temp]['mf_value'] = (int)$this->newArray[$temp]['mf_value'];;
            $this->newArray[$temp]['mts_value'] = (int)$this->newArray[$temp]['mts_value'];;
        }
    }
}