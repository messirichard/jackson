<?php
$this->breadcrumbs=array(
	'Promotion/Slide'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-image',
	'title'=>'Promotion/Slide',
	'subtitle'=>'Data Promotion/Slide',
);

$this->menu=array(
	array('label'=>'List Promotion/Slide', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc)); ?>
