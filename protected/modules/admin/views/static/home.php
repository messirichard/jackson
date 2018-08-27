<?php
$this->breadcrumbs=array(
	'setting'=>array('/admin/setting/index'),
	'Home Edit',
);

$this->pageHeader=array(
	'icon'=>'fa fa-home',
	'title'=>'Home',
	'subtitle'=>'Home Edit',
);
?>
<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'setting-form',
    // 'type'=>'horizontal',
	'enableAjaxValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
	'htmlOptions' => array('enctype' => 'multipart/form-data'),
)); ?>

<div class="row-fluid">
	<div class="span12">
		<div class="widget">
		<h4 class="widgettitle">Section Featured Category</h4>
		<div class="widgetcontent">
			<div class="multilang pj-form-langbar">
				<?php foreach (Language::model()->getLanguage() as $key => $value): ?>
				<a href="#" data-index="<?php echo $value->id ?>" data-abbr="<?php echo Yii::app()->baseUrl.'/asset/backend/language/'.$value->code.'.png' ?>" class="pj-form-langbar-item <?php if ($value->code==$this->setting['lang_deff']): ?>pj-form-langbar-item-active<?php endif ?>"><abbr style="background-image: url(<?php echo Yii::app()->baseUrl.'/asset/backend/language/'.$value->code.'.png' ?>);"></abbr></a>
				<?php endforeach ?>
			</div>
			<div class="divider5"></div>

				<?php if(Yii::app()->user->hasFlash('success')): ?>
				
				    <?php $this->widget('bootstrap.widgets.TbAlert', array(
				        'alerts'=>array('success'),
				    )); ?>
				
				<?php endif; ?>

				<?php Yii::import('ext.imperavi-redactor-widget.ImperaviRedactorWidget'); ?>
				<?php $this->widget('ImperaviRedactorWidget', array(
				    'selector' => '.redactor',
				    'options' => array(
				        'imageUpload'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'image')),
				        'clipboardUploadUrl'=> $this->createUrl('admin/setting/uploadimage', array('type'=>'clip')),
				    ),
				    'plugins' => array(
				        'clips' => array(
				        ),
				    ),
				)); ?>
				<div class="row-fluid">
				<?php for ($i=1; $i < 5 ; $i++) { ?>
					
					<div class="span3">
						<?php $type = 'home_product_featured_'.$i ?>
						<?php Common::createSetting($type, 'Featured Category '.$i, 'text', 'n') ?>
						<label for="Setting_<?php echo $model[$type]['data']->name ?>" class="control-label required"><?php echo $model[$type]['data']->label ?><span class="required"></span></label>
						<select name="<?php echo 'Setting['.$model[$type]['data']->name.']' ?>" id="Setting_<?php echo $model[$type]['data']->name ?>" class="span12">
							<?php 
							// PrdCategory::model()->deleteCategoryData();
							$dataCategory = (PrdCategory::model()->categoryTree('category', $this->languageID));
							// print_r($dataCategory);
							// exit;
							?>
							<option value="">---- Choose Category ----</option>
							<?php foreach ($dataCategory as $val): ?>
								<?php if (count($val['children']) > 0): ?>
								<optgroup label="<?php echo $val['title'] ?>">
									<?php foreach ($val['children'] as $k => $v): ?>
									<option value="<?php echo $v['id'] ?>"><?php echo $v['title'] ?></option>
									<?php endforeach ?>
								</optgroup>
								<?php else: ?>
								<option value="<?php echo $val['id'] ?>"><?php echo $val['title'] ?></option>
								<?php endif ?>
							<?php endforeach ?>
						</select>
						<?php if ($model[$type]['data']->value != ''): ?>
						<script type="text/javascript">
						$('#Setting_<?php echo $model[$type]['data']->name ?>').val('<?php echo $model[$type]['data']->value ?>');
						</script>
						<?php endif ?>
					</div>

				<?php } ?>
				</div>
				<div class="divider10"></div>
				<?php $this->widget('bootstrap.widgets.TbButton', array(
					'buttonType'=>'submit',
					'type'=>'primary',
					'label'=>'Save',
				)); ?>
		</div>
		</div>


		<div class="widget">
		<h4 class="widgettitle">Section Category Favorit</h4>
		<div class="widgetcontent">
			<div class="multilang pj-form-langbar">
				<?php foreach (Language::model()->getLanguage() as $key => $value): ?>
				<a href="#" data-index="<?php echo $value->id ?>" data-abbr="<?php echo Yii::app()->baseUrl.'/asset/backend/language/'.$value->code.'.png' ?>" class="pj-form-langbar-item <?php if ($value->code==$this->setting['lang_deff']): ?>pj-form-langbar-item-active<?php endif ?>"><abbr style="background-image: url(<?php echo Yii::app()->baseUrl.'/asset/backend/language/'.$value->code.'.png' ?>);"></abbr></a>
				<?php endforeach ?>
			</div>
			<div class="divider5"></div>
				<div class="row-fluid">
				<?php for ($i=1; $i < 4 ; $i++) { ?>

					<div class="span4">
						<?php
						$dataCategory = (PrdCategory::model()->categoryTree('category', $this->languageID));
						?>
						<?php $type = 'home_product_favorit_'.$i ?>
						<?php Common::createSetting($type, 'Category Favorit '.$i, 'text', 'n') ?>
						<label for="Setting_<?php echo $model[$type]['data']->name ?>" class="control-label required"><?php echo $model[$type]['data']->label ?><span class="required"></span></label>
						<select name="<?php echo 'Setting['.$model[$type]['data']->name.']' ?>" id="Setting_<?php echo $model[$type]['data']->name ?>" class="span12">
							<?php 
							// PrdCategory::model()->deleteCategoryData();
							$dataCategory = (PrdCategory::model()->categoryTree('category', $this->languageID));
							// print_r($dataCategory);
							// exit;
							?>
							<option value="">---- Choose Category ----</option>
							<?php foreach ($dataCategory as $val): ?>
								<?php if (count($val['children']) > 0): ?>
								<optgroup label="<?php echo $val['title'] ?>">
									<?php foreach ($val['children'] as $k => $v): ?>
									<option value="<?php echo $v['id'] ?>"><?php echo $v['title'] ?></option>
									<?php endforeach ?>
								</optgroup>
								<?php else: ?>
								<option value="<?php echo $val['id'] ?>"><?php echo $val['title'] ?></option>
								<?php endif ?>
							<?php endforeach ?>
						</select>
						<?php if ($model[$type]['data']->value != ''): ?>
						<script type="text/javascript">
						$('#Setting_<?php echo $model[$type]['data']->name ?>').val('<?php echo $model[$type]['data']->value ?>');
						</script>
						<?php endif ?>
						
						<?php /*
						<?php $type = 'home_product_favorit_image_'.$i ?>
						<?php Common::createSetting($type, 'Image', 'image', 'n') ?>
						<label for="Setting_<?php echo $model[$type]['data']->name ?>" class="control-label required"><?php echo $model[$type]['data']->label ?><span class="required"></span></label>
						<?php echo CHtml::fileField('Setting['.$model[$type]['data']->name.']', $model[$type]['data']->value, array('class'=>'span12')) ?>
						<p class="help-block">NOTE: Picture  landscape with min size 373 x 384 px, Larger image will be automatically cropped.</p>
						<?php if ($model[$type]['data']->value): ?>
							<div style="">
								<img style="height: auto; max-width: 300px;" src="<?php echo Yii::app()->baseUrl; ?>/images/static/<?php echo $model[$type]['data']->value; ?>" alt="">
							</div>
							<div class="clearfix" style="height: 15px;"></div>
							<div class="clearfix" style="height: 1px;"></div>
						<?php endif ?>
						*/ ?>

					</div>

				<?php } ?>
				</div>

				<div class="divider10"></div>
				<?php $this->widget('bootstrap.widgets.TbButton', array(
					'buttonType'=>'submit',
					'type'=>'primary',
					'label'=>'Save',
				)); ?>
		</div>
		</div>		
	</div>
</div>

<script type="text/javascript">
if (typeof RedactorPlugins === 'undefined') var RedactorPlugins = {};

RedactorPlugins.advanced = {
    init: function()
    {
        alert(1);
    }
}
jQuery(function( $ ) {
	$('.multilang').multiLang({
	});
})
</script>
<?php $this->endWidget(); ?>