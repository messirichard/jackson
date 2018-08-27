<?php
$session = new CHttpSession;
$session->open();
?>
<div class="subpage product">

  <div class="prelatife container">

    <div class="clear height-45"></div>
    <div class="back_product bloc_breadcrumb">
      <ol class="breadcrumb">
        <li><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
        <li class="active">Confirmation</li>
      </ol>
      <div class="clear"></div>
    </div>


    <div class="outer-cont-carts"> 
        <div class="clear height-20"></div>

		<div class="blocks_border_defaults pb15">
			<div class="ins text-center">
				<div class="top">
					<h3>Thank you for your order</h3>
				</div>
				<div class="middle content-text">
					<div class="clear height-25"></div>
					<p>Please complete your shopping process <br> by a bank transfer to this bank account details:</p>

					<p>BCA <br> 5060-943232 - CV. Karya Jaya Mandiri Sakti</p>
          <?php /*
          <p>OR</p>
          <p><a href="<?php echo CHtml::normalizeUrl(array('/paypal/createpayment', 'nota'=>$_GET['nota'])); ?>"><img src="<?php echo Yii::app()->baseUrl ?>/asset/images/paypal-payments.png" alt=""></a></p>
          */ ?>
          

					<p>And please confirm your transfer via SMS / Phone number 081 6540 7465 <br>
						or email to info@preciseshoes.com with mentioning your invoice number.</p>

					<p>We will deliver the goods as soon as you confirm your payments.</p>

					<h4><a href="<?php echo CHtml::normalizeUrl(array('/member/vieworder', 'nota'=>$_GET['nota'])); ?>">See your order here</a></h4>
					<div class="clear"></div>
				</div>
			</div>
		</div>
        <div class="clear height-50"></div><div class="height-20"></div>
            <div class="clear"></div>
    </div>


    <div class="clear"></div>
  </div>
</div>







