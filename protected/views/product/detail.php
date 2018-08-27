<?php
$session=new CHttpSession;
$session->open();
$login_member = $session['login_member'];
?>
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

<script src="<?php echo Yii::app()->baseUrl ?>/asset/js/sweetalert/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl ?>/asset/js/sweetalert/sweetalert.css">

<div class="clear"></div>
<div class="subpage static_productDetail">
  <section class="blocks_middle_DetailsProductpage default_sc">
    <div class="clear height-45"></div>
    <div class="prelatife container">

      <div class="tops_detail">
        <div class="row">
          <div class="col-md-8 col-sm-8">
            <div class="blc_name_product">
              <span class="category">PRECISE <?php echo $category->description->name ?></span>
              <div class="clear"></div>
              <h5 class="name"><?php echo $data->description->name ?></h5>
            </div>
          </div>
          <div class="col-md-4 col-sm-4">
            <div class="text-right backs_tCategory_links">
              <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=>$_GET['category'])); ?>" class="btn btn-link"><i class="fa fa-chevron-left"></i>&nbsp;&nbsp;BACK TO PRECISE <?php echo $category->description->name ?></a>
            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
      <div class="middles_detail">
        <div class="row default">
          <div class="col-md-8">
            <div class="picture_big">
              <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(726,507, '/images/product/'.$data->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive">
            </div>
          </div>

          <div class="col-md-4">
            <div class="descriptions padding-top-40">
              <h3 class="titles_product"><?php echo $data->description->name ?></h3>
              <div class="clear height-20"></div>
              <div class="prices">
                <?php
                $dataHarga = PrdProduct::model()->price(array('harga'=>$data->harga, 'discount'=>$data->harga_retail), $this->setting)
                ?>
                <?php if ($dataHarga['price_coret'] > 0): ?>
                  <span class="through" style="color: red;"><?php echo Cart::money($dataHarga['price_coret']) ?></span>
                  <span><?php echo Cart::money($dataHarga['price']) ?></span>
                <?php else: ?>
                  <span><?php echo Cart::money($dataHarga['price']) ?></span>
                <?php endif ?>

                <?php /*
                <?php if ($login_member['type'] == 'member'): ?>
                <span class="through" style="color: red;"><?php echo Cart::money($data->harga) ?></span>
                <span><?php echo Cart::money($data->harga - (0.1 * $data->harga)) ?></span>
                <?php else: ?>
                  <?php if ($data->harga_coret > $data->harga): ?>
                  <span class="through" style="color: red;"><?php echo Cart::money($data->harga_coret) ?></span>
                  <?php endif ?>
                <span><?php echo Cart::money($data->harga) ?></span>
                <?php endif ?>
                */ ?>
              </div>
              <div class="clear height-10"></div>
              <?php if ($data->onsale == 1): ?>
              <div class="blc_prmSales"><span>SALE</span></div>
              <?php endif ?>
              <div class="clear height-15"></div>
              <p><?php echo nl2br($data->description->subtitle) ?></p>
              <div class="clear"></div>
              <?php if (count($data->alternateImage) > 0): ?>
                
              <div class="picts_other_prdt">
                <b>OTHER IMAGES</b>
                <ul class="list-inline">
                <li><a href="#"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(82,57, '/images/product/'.$data->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive select-image"  data-big="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(726,507, '/images/product/'.$data->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"></a></li>
                <?php foreach ($data->alternateImage as $key => $value): ?>
                <li><a href="#"><img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(82,57, '/images/product/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img-responsive select-image"  data-big="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(726,507, '/images/product/'.$value->image , array('method' => 'adaptiveResize', 'quality' => '90')) ?>"></a></li>
                <?php endforeach ?>
                </ul>
              </div>
              <div class="clear"></div>
              <?php endif ?>
              <div class="box_form_addCart">
                <?php if(Yii::app()->user->hasFlash('success')): ?>

<script type="text/javascript">
swal({
  title: "<?php echo Yii::app()->user->getFlash('success') ?>",
  text: "Do you want to continue shopping?",
  type: "success",
  showCancelButton: true,
  confirmButtonColor: "#DD6B55",
  confirmButtonText: "Yes, Continue Shopping",
  cancelButtonText: "Go to Cart",
  // closeOnConfirm: false,
  closeOnCancel: false
},
function(isConfirm){
  if (isConfirm) {
    
  } else {
    window.location.href = '<?php echo CHtml::normalizeUrl(array('/cart/shop')); ?>';
  }
});
</script>
                <?php /*
                    <?php $this->widget('bootstrap.widgets.TbAlert', array(
                        'alerts'=>array('success'),
                    )); ?>
                */ ?>
                <?php endif; ?>

                <?php if(Yii::app()->user->hasFlash('danger')): ?>
                    <?php $this->widget('bootstrap.widgets.TbAlert', array(
                        'alerts'=>array('danger'),
                    )); ?>
                <?php endif; ?>
                <form class="form-inline" action="<?php echo CHtml::normalizeUrl(array('addcart', 'category'=>$_GET['category'])); ?>" method="post">
                  <input type="hidden" id="price-item" value="<?php echo $data->harga ?>">
                  <input type="hidden" name="id" value="<?php echo $data->id ?>">
                  <?php if (count($data->attributes) > 0): ?>
                    
                  <div class="form-group">
                    <label for="exampleInputName2">SIZE</label>
                    <select name="option" id="" class="form-control">
                    <?php foreach ($data->attributes as $key => $value): ?>
                      <option value="<?php echo $value->id_str ?>"><?php echo $value->attribute ?></option>
                    <?php endforeach ?>
                    </select>
                  </div>
                  <?php endif ?>
                  <div class="form-group">
                    <label for="exampleInputEmail2">QTY</label>
                    <input type="number" name="qty" value="1" class="form-control">
                  </div>
                  <button type="submit" class="btn btn-default btns_orangeBlock">ADD TO CART</button>
                </form>
                <div class="clear"></div>
              </div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
        <div class="clear"></div>
      </div>

      <div class="clear height-50"></div>
      <div class="clear height-20"></div>
    </div>
    <div class="clear"></div>
    <div class="bottoms_block_productDetail back-white">
      <div class="tops back-black">
        <h6>MORE ON <?php echo strtoupper($data->description->name) ?></h6>
        <div class="clear"></div>
      </div>
      <div class="clear height-45"></div>
      
      <div class="prelatife container">
        <div class="blocks_description_bottom-DetailProducts ">
          <?php echo $data->description->desc ?>
          <div class="clear"></div>
        </div>
      </div>

      <div class="clear height-50"></div>
      <div class="clear height-25"></div>
    </div>
    <div class="clear"></div>
  </section>

  <div class="clear"></div>
</div>
<script type="text/javascript">
  $(function(){
      $(document).on('click', '.select-image', function(e){
          $('.select-image').removeClass('active');
          $(this).addClass('active');
          $('.picture_big img').attr('src', $(this).attr('data-big'));
          return false;
       });
    });
</script>

