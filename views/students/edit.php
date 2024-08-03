<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Students $model */

$this->title = 'Chi tiết Quốc tịch';
?>

<div class="students-update">

  <h1><?= Html::encode($this->title) ?></h1>

  <?= $this->render('_form', [
    'model' => $model
  ]) ?>
</div>