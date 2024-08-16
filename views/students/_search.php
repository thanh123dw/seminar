<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\StudentsSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="col students-search container">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <div class="row align-items-end ">
        <div class="col">
            <?= $form->field($model, 'first_name') ?>
        </div>
        <div class="col">
            <?= $form->field($model, 'last_name') ?>
        </div>
        <div class="col">
             <div class="form-group">
                <?= Html::submitButton('Tìm kiếm', ['class' => 'btn btn-primary']) ?>
            </div>
        </div>
    </div>

    <?php // echo $form->field($model, 'grade_level')
    ?>

    <?php // echo $form->field($model, 'email')
    ?>



    <?php ActiveForm::end(); ?>

</div>