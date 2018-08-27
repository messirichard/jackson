<div class="blocks_subpage_banner promotion mih393 inside_top_illustration" style="background: none; background-image: none;">
    <div class="picts_full">
      <img src="<?php echo Yii::app()->baseUrl.'/images/static/'.$this->setting['about_hero_image']; ?>" alt="<?php echo $this->setting['about_hero_title'] ?>" class="img-responsive center-block">  
    </div>
    
    <?php if ($this->setting['about_hero_title']): ?>
    <div class="outers_block_text">
      <div class="prelatife blocks_text">
        <h3 class="sub_title_p"><?php echo $this->setting['about_hero_title'] ?></h3>
      </div>
    </div>
    <?php endif; ?>
</div>
<script type="text/javascript">
  $(window).load(function(){
    if ( $(window).width() > 768 ) {
      var get_heightBanner = $('.blocks_subpage_banner.inside_top_illustration .picts_full').height();
      $('.blocks_subpage_banner.inside_top_illustration .outers_block_text').css('height', get_heightBanner+'px');
    }
  });
</script>

<div class="clear"></div>
<div class="subpage static_about">
  <section class="default_sc back-black conts_block_about1">
    <div class="prelatife container text-center">
      <div class="insides">
        <p><?php echo $this->setting['about_hero_subtitle'] ?></p>
        <div class="clear"></div>
      </div>
    </div>
  </section>

  <section class="blocks_middle_about2 default_sc">
    <div class="prelatife container">
      <div class="clear height-50"></div><div class="clear height-50"></div>
      <div class="content-text text-center">
        <div class="maw870 tengah">
          <div class="clear height-10"></div>
          <img src="<?php echo $this->assetBaseurl; ?>pict-about-1.jpg" alt="" class="img-responsive center-block">
          <div class="clear height-5"></div>
          <h3><?php echo $this->setting['about_title'] ?></h3>
          <p><?php echo $this->setting['about_subtitle'] ?></p>
          <div class="clear"></div>
        </div>
        <div class="clear height-50"></div><div class="clear height-20"></div>
        <div class="picts_full"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(1155,662, '/images/static/'.$this->setting['about_image'] , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive"></div>
        <div class="clear height-50"></div><div class="clear height-25"></div>

        <div class="mw850 tengah">
        <?php echo $this->setting['about_content'] ?>
        </div>
        
        <div class="clear height-50"></div>
        <div class="clear height-50"></div>
      </div>

      <div class="clear"></div>
    </div>

  </section>

  <section class="default_sc backs_bottomAbout_middlsn">
    <div class="prelatife container">
      <div class="insides text-center">
        <h4 class="sub_title"><?php echo nl2br($this->setting['about_section2_title']) ?></h4>
        <div class="clear"></div>
        <div class="lists_defalt_bottom_pilarAbout">
          <div class="row default">
          <?php for ($i=1; $i < 5 ; $i++) { ?>
            <div class="col-md-3 col-sm-6">
              <div class="items">
                <div class="picture"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(279,196, '/images/static/'.$this->setting['about_section2_image_'.$i] , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive"></div>
                <div class="info">
                  <p><?php echo nl2br($this->setting['about_section2_title_'.$i]) ?></p>
                  <div class="clear"></div>
                </div>
              </div>
            </div>
          <?php } ?>
          </div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
    <div class="clear height-50"></div>
    <div class="clear height-30"></div>
  </section>

  <div class="clear"></div>
</div>