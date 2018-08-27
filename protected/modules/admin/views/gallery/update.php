<?php
$this->breadcrumbs=array(
	'Promotion'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-tag',
	'title'=>'Promotion',
	'subtitle'=>'Data Promotion',
);

$this->menu=array(
	array('label'=>'List Promotion', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Promotion', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Promotion', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php echo $this->renderPartial('_form',array('model'=>$model, 'modelDesc'=>$modelDesc, 'modelImage'=>$modelImage)); ?>
