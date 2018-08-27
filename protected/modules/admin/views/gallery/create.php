<?php
$this->breadcrumbs=array(
	'Promotion'=>array('index'),
	'Add',
);

$this->pageHeader=array(
	'icon'=>'fa fa-tag',
	'title'=>'Promotion',
	'subtitle'=>'Data Promotion',
);

$this->menu=array(
	array('label'=>'List Promotion', 'icon'=>'th-list','url'=>array('index')),
);
?>

<?php $this->widget('bootstrap.widgets.TbButtonGroup',array('buttons'=>$this->menu,)); ?>
<?php echo $this->renderPartial('_form', array('model'=>$model, 'modelDesc'=>$modelDesc, 'modelImage'=>$modelImage)); ?>
