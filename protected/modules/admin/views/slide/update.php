<?php
$this->breadcrumbs=array(
	'Promotion/Slide'=>array('index'),
	// $model->id=>array('view','id'=>$model->id),
	'Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-image',
	'title'=>'Promotion/Slide',
	'subtitle'=>'Data Promotion/Slide',
);

$this->menu=array(
	array('label'=>'List Promotion/Slide', 'icon'=>'th-list','url'=>array('index')),
	array('label'=>'Add Promotion/Slide', 'icon'=>'plus-sign','url'=>array('create')),
	// array('label'=>'View Promotion/Slide', 'icon'=>'pencil','url'=>array('view','id'=>$model->id)),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php echo $this->renderPartial('_form',array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
