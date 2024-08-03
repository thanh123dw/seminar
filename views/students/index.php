<?php

use yii\grid\GridView;
use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\StudentsSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Danh sách Học sinh';
$dataProvider->setSort(false);
?>
<div class="students-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row align-items-center">

    <div class="col-2">
        <?= Html::a('Thêm', ['create'], ['class' => 'btn btn-success']) ?>
    </div>

    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
</div>
    <?= GridView::widget([
        'pager' => [
            'firstPageLabel' => 'Đầu',
            'lastPageLabel' => 'Cuối'
        ],
        'layout' => "{pager}\n{summary}\n{items}\n{pager}",
        'dataProvider' => $dataProvider,
        'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => ''],
        'summary' => "Đang hiện từ {begin} - {end} trong {totalCount} " . $this->title,
        'emptyText' => "Không tìm thấy kết quả",
        'tableOptions' => ['class' => 'table table-bordered table-hover table table-striped'],
        'rowOptions' => function ($model, $key, $index, $grid) {
            return [
                'style' => "cursor: pointer",
                'onclick' => 'location.href="' . Yii::$app->urlManager->createUrl([ 'students/update', 'id' => $model->id]) . '"'
            ];
        },
        'columns' => [
            [
                'class' => 'yii\grid\SerialColumn',
                'header' => 'STT',
                'headerOptions' => [
                    'class' => 'text-center'
                ],
                'contentOptions' => [
                    'class' => 'text-center'
                ]
            ],
            'first_name',
            'last_name',
            'date_of_birth',
            'gender',
            'grade_level',
            'email:email',
            [
                'header' => 'locked',
                'headerOptions' => [
                    'class' => 'text-center'
                ],
                'format' => 'raw',
                'value' => function ($model) {
                    return Html::checkbox('Khoá',$model->locked, [
                        'disabled' => true
                    ]);
                },
                'contentOptions' => [
                    'class' => 'text-center'
                ]
            ]

        ],
    ]); ?>


</div>