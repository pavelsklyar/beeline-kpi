<?php

/**
 * @var $minutes array // Последние 12 записей в таблице
 * @var $hours array // Средние данные за последние 12 часов по каждому часу
 * @var $days array // Средние данные за последние 12 дней по каждому дню
 * @var $time DateTime
 */

$pathObj = new Path();
$params = $pathObj->getParams();

?>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<script>
    Highcharts.chart('container', {
        chart: {
            type: 'line'
        },
        title: {
            text: 'Динамика KPI'
        },
        xAxis: {
            categories: [
                <?php if ($params['time'] == 'hours') : ?>
                    <?php foreach ($hours as $hour) : ?>
                    '<?= $hour['time_key'] ?>',
                    <?php endforeach; ?>
                <?php elseif ($params['time'] == 'days') : ?>
                    <?php foreach ($days as $day) : ?>
                    '<?= $day['time_key'] ?>',
                    <?php endforeach; ?>
                <?php else : ?>
                    <?php foreach ($minutes as $minute) : ?>
                    '<?= DateFormat::edit($minute['time_key']) ?>',
                    <?php endforeach; ?>
                <?php endif; ?>
            ]
        },
        yAxis: {
            title: {
                text: 'Value'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'Beeline',
            data: [
                <?php if ($params['time'] == 'hours') : ?>
                    <?php foreach ($hours as $hour) : ?>
                    <?= $hour['beeline_value'] ?>,
                    <?php endforeach; ?>
                <?php elseif ($params['time'] == 'days') : ?>
                    <?php foreach ($days as $day) : ?>
                    <?= $day['beeline_value'] ?>,
                    <?php endforeach; ?>
                <?php else : ?>
                    <?php foreach ($minutes as $minute) : ?>
                    <?= $minute['beeline_value'] ?>,
                    <?php endforeach; ?>
                <?php endif; ?>
            ]
        }, {
            name: 'Megafon',
            data: [
                <?php if ($params['time'] == 'hours') : ?>
                    <?php foreach ($hours as $hour) : ?>
                    <?= $hour['mf_value'] ?>,
                    <?php endforeach; ?>
                <?php elseif ($params['time'] == 'days') : ?>
                    <?php foreach ($days as $day) : ?>
                    <?= $day['mf_value'] ?>,
                    <?php endforeach; ?>
                <?php else : ?>
                    <?php foreach ($minutes as $minute) : ?>
                    <?= $minute['mf_value'] ?>,
                    <?php endforeach; ?>
                <?php endif; ?>
            ]
        }, {
            name: 'MTS',
            data: [
                <?php if ($params['time'] == 'hours') : ?>
                    <?php foreach ($hours as $hour) : ?>
                    <?= $hour['mts_value'] ?>,
                    <?php endforeach; ?>
                <?php elseif ($params['time'] == 'days') : ?>
                    <?php foreach ($days as $day) : ?>
                    <?= $day['mts_value'] ?>,
                    <?php endforeach; ?>
                <?php else : ?>
                    <?php foreach ($minutes as $minute) : ?>
                    <?= $minute['mts_value'] ?>,
                    <?php endforeach; ?>
                <?php endif; ?>
            ]
        }]
    });
</script>

<div class="container">
    <input type="button" value="Обновить" class="btn btn-primary" onClick="window.location.reload()">

    <select name="time" id="">
        <?php if (empty($params) || $params['time'] == 'minutes') : ?>
            <option value="minutes" onclick="window.location = '/?time=minutes'" selected>Минуты</option>
            <option value="hours" onclick="window.location = '/?time=hours'">Часы</option>
            <option value="days" onclick="window.location = '/?time=days'">Дни</option>
        <?php elseif ($params['time'] == 'hours') : ?>
            <option value="minutes" onclick="window.location = '/?time=minutes'" >Минуты</option>
            <option value="hours" onclick="window.location = '/?time=hours'" selected>Часы</option>
            <option value="days" onclick="window.location = '/?time=days'">Дни</option>
        <?php elseif ($params['time'] == 'days') : ?>
            <option value="minutes" onclick="window.location = '/?time=minutes'" >Минуты</option>
            <option value="hours" onclick="window.location = '/?time=hours'">Часы</option>
            <option value="days" onclick="window.location = '/?time=days'" selected>Дни</option>
        <?php endif; ?>
    </select>
</div>