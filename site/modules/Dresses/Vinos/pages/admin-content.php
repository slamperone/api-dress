<?php if(!empty($description)): ?>
	<p><?=$description; ?></p>
<?php endif;  ?>

 

<?php if(!empty($button_add)): ?>
	<p><a href="<?=$button_add_url; ?>"><button class="ui-button ui-widget ui-corner-all ui-state-default" name="button" value="<?=$button_add_text; ?>" type="button"><span class="ui-button-text"><i class="fa fa-plus-circle"></i> <?=$button_add_text; ?></span></button></a> 
 

	</p>
<?php endif;  ?>

<?php if($count_results): ?>
	<?php if(isset($pagination)): ?>
		<?php print $pagination; ?>
	<?php endif; ?>
<?php print $table; ?>
	<?php if(isset($pagination)): ?>
		<?php print $pagination; ?>
	<?php endif; ?>
<?php else: ?>
	<p><?=$no_results; ?></p>
<?php endif; ?>