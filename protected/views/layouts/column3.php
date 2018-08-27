<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<?php echo $this->renderPartial('//layouts/_header', array()); ?>
<div class="clear"></div>
<div class="middles_wrapper_cont tops_home">
	<?php echo $content ?>
   
   <div class="clear"></div>
</div>

<?php echo $this->renderPartial('//layouts/_footer', array()); ?>
<?php $this->endContent(); ?>