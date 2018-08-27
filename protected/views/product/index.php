<?php
  $criteria=new CDbCriteria;
  $criteria->with = array('description', 'category', 'brand');
  $criteria->order = 'date DESC';
  $criteria->addCondition('status = "1"');
  $criteria->addCondition('terlaris = "1"');
  $criteria->addCondition('description.language_id = :language_id');
  $criteria->params[':language_id'] = $this->languageID;
  // $pageSize = 12;
  $criteria->group = 't.id';
  $dataProduct = PrdProduct::model()->findAll($criteria);

  $session=new CHttpSession;
  $session->open();
  $login_member = $session['login_member'];

?>
<?php if ($strCategory != null): ?>
<div class="blocks_subpage_banner landing_product mih393">
  <div class="prelatife container">
    <div class="picts_full"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(1264,668, '/images/category/'.$strCategory->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive"></div>
    <div class="clear"></div>
  </div>
</div>

<div class="clear"></div>
<?php endif ?>
<div class="subpage static_about">
<?php if ($strCategory != null): ?>
  <section class="default_sc back-orange conts_block_about1">
    <div class="prelatife container text-center">
      <div class="insides">
        <p>Ingin mendapatkan Precise shoesmu dengan harga istimewa, gabung bersama instagram @preciseshoes atau selalu pantau halaman promo ini!</p>
        <div class="clear"></div>
      </div>
    </div>
  </section>
<?php endif ?>

  <section class="blocks_middle_Products default_sc">
    <div class="prelatife container">

        <div class="block_product_data_wrap">
          <div class="top text-center">
              <?php if ($strCategory != null): ?>

<?php
$bread = PrdCategory::model()->getBreadcrump($_GET['category'], $this->languageID);
$bread = array_reverse($bread,true);
$dataCategory = array();
foreach ($bread as $key => $value) {
  // $this->breadcrumbs[$key]=$value;
  array_push($dataCategory, $key);
}
$dataCategory = array_reverse($dataCategory);
?>

                <?php if ($_GET['q'] != ''): ?>
                <h6>CARI "<?php echo $_GET['q'] ?>" di kategori <?php echo implode(' -> ', $dataCategory) ?></h6>
                <?php else: ?>
                <h6>LIHAT PRECISE <?php echo implode(' -> ', $dataCategory) ?></h6>
                <?php endif ?>
              <?php elseif($_GET['q'] != ''): ?>
              <h6>CARI "<?php echo $_GET['q'] ?>" DI SEMUA KATEGORI</h6>
              <?php else: ?>
              <h6>CARI SEMUA PRODUK</h6>
              <?php endif ?>

          </div>
          <div class="clear"></div>
          <div class="blocks_bxFilters_topPage_prd">
              <div class="row default">
                <div class="col-md-5">
                  <h2 class="views_pagn">MENAMPILKAN <?php echo $product->getItemCount() ?> DARI <?php echo $product->getTotalItemCount() ?> PRODUK PRECISE</h2>
                </div>
                <div class="col-md-7">
                  <div class="flot_filter_top_productPg">
                    <div class="d-inline block_itm">
<?php
$data = $product->getData();
?>
<?php
$get = $_GET;
unset($get['order']);
?>
                      <form action="<?php echo $this->createUrl('/product/index', $get) ?>" method="get" id="form-filter">
                        <div class="form-group">
                        <label for="">URUTKAN BERDASAR</label>
                        <select name="order" id="select-order" class="form-control select-filter">
                          <option value="new">Terbaru</option>
                          <option value="low-price">Harga Terendah</option>
                          <option value="hight-price">Harga Tetinggi</option>
                        </select>
                        </div>
                      </form>
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
              </div> <div class="clear"></div>
            <div class="clear"></div>
          </div>
<script type="text/javascript">
$('.select-filter').on('change', function() {
  $('#form-filter').submit();
})
<?php if ($_GET['order'] != ''): ?>
$('#select-order').val('<?php echo $_GET['order'] ?>');
  
<?php endif ?>
</script>
          <div class="clear height-10"></div>
          <?php if ($product->getItemCount() > 0): ?>
            
          <div id="owl-demo" class="lists_product_data row">
            <?php foreach ($data as $key => $value): ?>
              
            <div class="col-md-3 col-sm-6">
              <div class="items">
                <div class="picture prelatife">
                  <?php if ($value->onsale == 1): ?>
                  <div class="boxs_inf_head_n1"></div>
                  <?php endif ?>
                  <?php /*<a href="<?php //echo CHtml::normalizeUrl(array('/product/detail', 'id'=>$value->id)); ?>#">*/ ?>
                  <?php // echo Yii::app()->baseUrl.ImageHelper::thumb(321,321, '/images/product/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>
                  <?php if ($_GET['category'] != ''): ?>
                  <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=>$value->id, 'category'=>$_GET['category'])); ?>">
                  <?php else: ?>
                  <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=>$value->id)); ?>">
                  <?php endif ?>
                  <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(273,191, '/images/product/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" class="img-responsive" alt="">
                  </a>
                  <!-- </a> -->
                </div>
                <div class="info description">
                  <?php if ($_GET['category'] != ''): ?>
                  <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=>$value->id, 'category'=>$_GET['category'])); ?>">
                  <?php else: ?>
                  <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=>$value->id)); ?>">
                  <?php endif ?>
                  <span class="names"><?php echo $value->description->name ?></span>
                  </a>
                  <div class="clear"></div>
                  <span class="category"><?php echo $strCategory->description->name ?></span>
                  <div class="clear"></div>
                    <?php
                    $dataHarga = PrdProduct::model()->price(array('harga'=>$value->harga, 'discount'=>$value->harga_retail), $this->setting)
                    ?>
                    <?php if ($dataHarga['price_coret'] > 0): ?>
                      <span style="text-decoration: line-through; color: red;"><?php echo Cart::money($dataHarga['price_coret']) ?></span> <span class="price"><?php echo Cart::money($dataHarga['price']) ?></span>
                    <?php else: ?>
                      <span class="price"><?php echo Cart::money($dataHarga['price']) ?></span>
                    <?php endif ?>
                </div>
              </div>
            </div>
            <?php endforeach ?>
          </div>
          <?php else: ?>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h3>No Data</h3>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          <?php endif ?>
          <div class="clear height-15"></div>
            <div class="blocks_bxFilters_topPage_prd">
              <div class="row default">
                <div class="col-md-5">
                  <h2 class="views_pagn">MENAMPILKAN <?php echo $product->getItemCount() ?> DARI <?php echo $product->getTotalItemCount() ?> PRODUK PRECISE</h2>
                </div>
                <div class="col-md-7">
                  <div class="flot_filter_top_productPg">
                    <div class="d-inline block_itm filter_pagin">
                      <?php $this->widget('CLinkPager', array(
                        'pages' => $product->getPagination(),
                        'header' => 'HALAMAN',
                        'htmlOptions' => array('class' => 'pagination'),
                        'lastPageCssClass'=>'hide',
                        'firstPageCssClass'=>'hide',
                        'nextPageCssClass'=>'hide',
                        'previousPageCssClass'=>'hide',
                      )) ?>
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
              </div> <div class="clear"></div>
            <div class="clear"></div>
          </div>
          

          <div class="clear"></div>
        </div>

        <div class="clear"></div>
      </div>

      <div class="clear"></div>
    </div>

  </section>

  <div class="clear"></div>
</div>









