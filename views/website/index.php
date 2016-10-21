<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <div class="menu">
    <?php foreach($departments as $departmentsItem):?>
        <div class="panel">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a href="/departments/<?php echo $departmentsItem['id'];?>">
                        <?php echo $departmentsItem['name'];?>
                    </a>
                </h4>
            </div>
        </div>
    <?php endforeach; ?>
    </div>
    <div class="container">
    <?php foreach ($workers as $worker):?>
        <div class="worker-panel">
            <div class="single-worker">
                <a href="/worker/<?php echo $worker['id'];?>"></a>
                <h2><?php echo $worker['name'];?></h2>
                <p><?php echo $worker['birhday'];?></p>
            </div>

        </div>
    <?php endforeach; ?>
    </div>
</body>
</html>

