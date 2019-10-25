<?php

$ch = curl_init('beeline.site/data/get');
curl_exec($ch);
curl_close($ch);