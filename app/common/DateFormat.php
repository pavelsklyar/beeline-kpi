<?php


class DateFormat
{
    public static function edit($myslidate)
    {
        $date = explode(' ', $myslidate);

        return self::edit_time($date[1]) . ' ' . self::edit_date($date[0]);
    }

    public static function edit_time($mysqldate) {

        $date = explode(':', $mysqldate);

        $hours = $date[0];
        $minutes = $date[1];
        $seconds = $date[2];

        $new_time = $hours . ':' . $minutes;

        return $new_time;

    }

    public static function edit_date($mysqldate) {

        $date = explode('-', $mysqldate);

        $day = $date[2];
        $month = $date[1];
        $year = $date[0];

        switch($month) {
            case 1:
                $month = 'янв';
                break;
            case 2:
                $month = 'фев';
                break;
            case 3:
                $month = 'мар';
                break;
            case 4:
                $month = 'апр';
                break;
            case 5:
                $month = 'мая';
                break;
            case 6:
                $month = 'июня';
                break;
            case 7:
                $month = 'июля';
                break;
            case 8:
                $month = 'авг';
                break;
            case 9:
                $month = 'сен';
                break;
            case 10:
                $month = 'окт';
                break;
            case 11:
                $month = 'ноя';
                break;
            case 12:
                $month = 'дек';
                break;
        }

        $new_date = $day . ' ' . $month . ' ' . $year;

        return $new_date;

    }
}