

<form action="{SITE_URL}/admin/product/delete/id/{ID}" method="post">
	<div class="box-shadow" style="width: 600px">
		<div class="box_header">
		</div>
		<ul class="form delete">
			<li class="clearfix">
				<p>Are you sure you want to delete product ?</p>
			</li>
			<li class="clearfix">
				<input type="checkbox" name="confirm"><label>Confirm deletion</label>
				<input type="submit" class="button" value="YES" style="float: left; margin-right:10px;">
				<input type="button" onclick="window.location = '{SITE_URL}/admin/product/list'" class="button" value="Cancel">
			</li>
		</ul>
	</div>
</form>
