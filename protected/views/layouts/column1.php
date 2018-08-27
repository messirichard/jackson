<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>

<?php echo $this->renderPartial('//layouts/_header', array()); ?>
<div class="clear"></div>
<div class="middles_wrapper_cont tops_home">
    <!-- Start fcs -->
    <div class="fcs-wrapper outers_fcs_wrapper prelatife">
        <div id="myCarousel_home" class="carousel fade" data-ride="carousel">
            <?php
            $criteria=new CDbCriteria;
            $criteria->with = array('description');
            $criteria->addCondition('description.language_id = :language_id');
            $criteria->addCondition('active = 2');
            $criteria->params[':language_id'] = $this->languageID;
            $criteria->group = 't.id';
            $criteria->order = 't.id ASC';
            $slide = Slide::model()->with(array('description'))->findAll($criteria);
            ?>
            <ol class="carousel-indicators">
                <?php foreach ($slide as $key => $value): ?>
                    <li data-target="#myCarousel_home" data-slide-to="<?php echo $key; ?>" <?php if($key == 0){ ?>class="active"><?php } ?></li>
                <?php endforeach; ?>
            </ol>
            <div class="carousel-inner">
                <?php foreach ($slide as $key => $value): ?>
                <div class="item <?php if($key == 0){ ?>active<?php } ?>">
                <a href="<?php echo CHtml::normalizeUrl(array('/home/promosi', 'id'=>$value->id)); ?>">
                    <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(1160,645, '/images/slide/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive full_img">
                    </a>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="backs_shadow_bottom_fn"></div>
        <div class="clear"></div>
    </div>
    <!-- End fcs -->
   
   <div class="clear"></div>
</div>
<?php echo $content ?>

<?php echo $this->renderPartial('//layouts/_footer', array()); ?>
<?php $this->endContent(); ?>