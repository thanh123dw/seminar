<?php
namespace app\controllers;

use app\models\Students;
use app\models\StudentsSearch;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * StudentsController implements the CRUD actions for Students model.
 */
class StudentsController extends Controller
{
    public function actionIndex()
    {
        $searchModel = new StudentsSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider
        ]);
    }

    public function actionCreate()
    {
        return $this->editStudents();
    }

    public function actionUpdate($id)
    {
        return $this->editStudents($id);
    }

    private function editStudents($id = 0)
    {
        $model = new Students();

        if ($id) {
            $model = $this->findModel($id);
        }

        $post = Yii::$app->request->post();
        if ($model->load($post) && $model->save()) {
            $previous = self::getPreviousPage();
            if (isset($previous)) {
                return $this->redirect($previous);
            }
            return $this->redirect([
                'index'
            ]);
        } else {
            Yii::$app->session['previous'] = Yii::$app->request->referrer;
            return $this->render('edit', [
                'model' => $model
            ]);
        }
    }

    protected function findModel($id)
    {
        if (($model = Students::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
