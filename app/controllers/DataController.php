<?php


class DataController
{
    public function get()
    {
        $data = [
            'LOGIN' => "ozpavel@yandex.ru",
            'PASSWORD' => 'aADip1s'
        ];

        $ch = curl_init('https://mixtech.dev/neiro-bit/beeline/?LOGIN=ozpavel@yandex.ru&PASSWORD=aADip1s');
//        $ch = curl_init('https://mixtech.dev/neiro-bit/beeline/');  // для POST запроса
//        curl_setopt($ch, CURLOPT_POST, true); //переключаем запрос в POST
//        curl_setopt($ch, CURLOPT_POSTFIELDS, $data); //Это POST данные
        curl_setopt($ch, CURLOPT_RETURNTRANSFER,TRUE);
        $dataObject = curl_exec($ch);
        curl_close($ch);

        $dataObject = json_decode($dataObject);

        $data = $dataObject->data;

        $kpi = new KPI($data->USER_EMAIL, $data->BEELINE_VALUE, $data->MF_VALUE, $data->MTS_VALUE, $data->TIME_KEY, $data->TEST);

//        var_dump($kpi);

        $kpi->save();
    }
}