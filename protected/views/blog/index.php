<section class="outers_page_static back_cream mh500 back_grey_pattern">
  <div class="insides sub_page_static about_us">
    <div class="prelatife container">
      <div class="clear height-50"></div><div class="height-15"></div>
      
      <div class="clear"></div>
<section class="section_default back_grey mh850 blocks_news_home">
  <div class="prelatife container">
    <div class="tops margin-bottom-50">
      <h6>Blog</h6>
      <!-- <div class="clear"></div>
      <h5>BLOG</h5> -->
      <div class="height-30"></div>
      <p>Dapatkan informasi menarik seputar dunia elektronik, ulasan produk mulai dari teknologi <br> televisi terbaru, review produk home teathre, peralatan rumah tangga mulai mesin cuci, <br> kulkas, penyejuk ruangan (AC) dan masih banyak lagi.</p>
      <div class="clear height-30"></div>
      
      <?php /*
      <div class="block_nav" style="max-width: 180px;">
        <ul class="list-inline">
          <li class="active"><a href="javascript:;" style="cursor:default;">BLOG</a></li>
        </ul>
        <div class="clear"></div>
      </div>
      */ ?>

    </div>
    <div class="clear height-2"></div>
    <div class="middles">
      
      <!-- start list news -->
      <div class="listing_news_default">
        <?php if ($dataFeatured->getTotalItemCount() > 0): ?>

        <div class="row">
            <?php foreach ($dataFeatured->getData() as $key => $value): ?>
          <div class="col-md-6 col-lg-6">
            <div class="items featured">
              <div class="picts"><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(619,465, '/images/blog/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive"></a></div>
              <div class="clear"></div>
              <article>
                <div class="title"><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><?php echo $value->description->title ?></a></div>
                <div class="clear"></div>
                <span class="dates">
                  <?php /*
                <?php if ($value->doctor_id == 0): ?>
                  <?php if ($value->member_id == 0): //admin ?>
                      Admin
                  <?php else: // pasien?>  
                      Patient
                  <?php endif ?>  
                <?php else: // doctor?>
                  <a href="<?php echo CHtml::normalizeUrl(array('/surgeons/detail', 'id'=>$value->doctor_id)); ?>">
                  <?php
                  echo(Doctor::model()->findByPk($value->doctor_id)->name);
                  ?>
                  </a>
                  -
                <?php endif ?>
                  */ ?>
                <?php echo date('d F Y', strtotime($value->date_input)) ?></span>
              </article>
            </div>
          </div>
            <?php endforeach ?>
        </div>
        <div class="clear height-15"></div>
        
        <?php if ($dataBlog->getTotalItemCount() > 0): ?>
            <div class="row">
        <?php foreach ($dataBlog->getData() as $key => $value): ?>
              <div class="col-md-3">
                <div class="items">
                  <div class="picts"><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(304,222, '/images/blog/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive"></a></div> 
                  <div class="clear"></div>
                  <article>
                    <div class="title"><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><?php echo $value->description->title ?></a></div> 
                    <div class="clear"></div>
                    <span class="dates">
                      <?php /*
                    <?php if ($value->doctor_id == 0): ?>
                      <?php if ($value->member_id == 0): //admin ?>
                          Admin
                      <?php else: // pasien?>  
                          Patient
                      <?php endif ?>  
                    <?php else: // doctor?>
                      <a href="<?php echo CHtml::normalizeUrl(array('/surgeons/detail', 'id'=>$value->doctor_id)); ?>">
                      <?php
                      echo(Doctor::model()->findByPk($value->doctor_id)->name);
                      ?>
                      </a>
                      -
                    <?php endif ?>
                      */ ?>
                    <?php echo date('d F Y', strtotime($value->date_input)) ?></span>
              </article>
                  </article>
                </div>
              </div>
        <?php endforeach ?>
            </div>
        <?php $this->widget('CLinkPager', array(
          'pages' => $dataBlog->getPagination(),
          'header' => '',
          'htmlOptions' => array('class' => 'pagination'),
        )) ?>
      <?php else: ?>
      <h3>No data blog</h3>
      <?php endif ?>

      <?php else: ?>
      <h3>No data blog</h3>
      <?php endif ?>


        <div class="clear"></div>
      </div>
      <!-- end list news -->

      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</section>

      <div class="clear height-50"></div>
    </div>
    <div class="clear"></div>
  </div>
</section>