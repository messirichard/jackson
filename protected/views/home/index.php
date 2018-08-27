<?php
$session=new CHttpSession;
$session->open();
$login_member = $session['login_member'];


?>
<div class="spotlight">
	<div class="spotlight-dalam">
		<p style="font-size:17px;">COLLECTION</p>
		<P style="font-size:40px;font-weight: 400;">Spotlight</P> 
		<div class="clear height-50"></div>
		<div class="spotlight-gambar-kecil">
			<img src="<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design2_03.jpg" style="margin-top: -380px;" class="" alt="">
		</div>
		<div class="spotlight-gambar-besar">
			<img src="<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design2_04_03.jpg" class="spotlight-gambar-besar img" alt="" width="970px" "height=560px;">
		</div>
	</div>
</div>
<div class="trending">
	<div class="trending-dalam">
		Trending.
	</div>
	<div class="menu-trending">
		<ul>
			<li>
				Shoes
			</li>
			<li>
				Clothing
			</li>
			<li>
				Accessories
			</li>
		</ul>
	</div>

	<div class="gambar-trending">
		<img src="
		<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design_19.jpg" alt="">
		<img src="
		<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design_19.jpg" alt="">
		<img src="
		<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design_19.jpg" alt="">
		<img src="
		<?php echo Yii::app()->baseUrl.Yii::app()->theme->baseUrl; ?>/asset/images/design_19.jpg" alt="">
		<img src="" alt="">
		<img src="" alt="">
		<img src="" alt="">
	</div>
</div>