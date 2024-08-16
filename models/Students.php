<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "students".
 *
 * @property int $id
 * @property string $first_name
 * @property string $last_name
 * @property string|null $date_of_birth
 * @property string|null $gender
 * @property int|null $grade_level
 * @property string|null $email
 * @property int $locked
 */
class Students extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'students';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['first_name', 'last_name'], 'required'],
            [['date_of_birth'], 'safe'],
            [['gender'], 'string'],
            [['grade_level', 'locked'], 'integer'],
            [['first_name', 'last_name'], 'string', 'max' => 50],
            [['email'], 'email'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'first_name' => 'Tên',
            'last_name' => 'Họ',
            'date_of_birth' => 'Ngày sinh',
            'gender' => 'Gender',
            'grade_level' => 'Grade Level',
            'email' => 'Email',
            'locked' => 'Khóa',
        ];
    }
}
