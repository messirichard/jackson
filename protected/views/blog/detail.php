<section class="outers_page_static back_cream mh500 back_grey_pattern">
  <div class="insides sub_page_static about_us">
    <div class="prelatife container">
      <div class="clear height-50"></div><div class="height-10"></div>

      <div class="content-text insides_static">
        <h1 class="title_page">BLOGS</h1>
        <div class="clear"></div>
        <h3 class="tagline"><?php echo $dataBlog->description->title ?></h3>
        <div class="clear"></div>
        <div class="row details_cont_articles">
          <div class="col-md-9 text-left">
            <div class="left_cont">
              <div class="mw906">

                <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(980,1000, '/images/blog/'.$dataBlog->image , array('method' => 'resize', 'quality' => '90')) ?>" alt="">

                <?php echo $dataBlog->description->content ?>

                <div class="clear height-10"></div>
                <div class="shares-text text-left p_shares_article">
                    <span class="inline-t">SHARE</span>&nbsp; / &nbsp;<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=#">FACEBOOK</a>&nbsp; /
                    &nbsp;<a target="_blank" href="https://plus.google.com/share?url=#">GOOGLE PLUS</a>&nbsp; /
                    &nbsp;<a target="_blank" href="https://twitter.com/home?status=#">TWITTER</a>
                </div>

                <div class="clear"></div>
              </div>
            </div>

          </div>
          <div class="col-md-3 text-left">
            <div class="right_cont">
              <div class="padding-left-25">
                  <span class="sub_page_title">Other Blogs</span>
              </div>
              <div class="clear"></div>
              <div class="right_sub_menu">
                <ul class="list-unstyled">
                    <?php foreach ($dataBlogs->getData() as $key => $value): ?>
                        
                  <li><a href="<?php echo CHtml::normalizeUrl(array('detail', 'id'=>$value->id)); ?>"><?php echo $value->description->title ?></a></li>
                    <?php endforeach ?>
                </ul>
                <div class="clear"></div>
              </div>

              <div class="clear"></div>
            </div>
            <div class="clear"></div>
          </div>
        </div>
        

        <div class="clear"></div>
      </div>
      
      <div class="clear height-20"></div>
      <div class="clear height-50"></div>
    </div>
    <div class="clear"></div>
  </div>
</section>