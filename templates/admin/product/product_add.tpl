<form method="POST" enctype="multipart/form-data">
	<div class="form-group">
		<label>Product Name</label>
		<input type="text" name="name" class="form-control" id = "name">
	</div>
	<label>Stoc</label>
	<div class="input-group">
		<input type="text" class="form-control" name="stoc" value="0" aria-describedby="sizing-addon2" id="plusminus">
		<span style="cursor: pointer; cursor: hand;" class="input-group-addon" id="plus_one">+</span>
		<span style="cursor: pointer; cursor: hand;" class="input-group-addon" id="minus_one">-</span>
	</div>
	<div class="form-group">
		<label>Select Brand</label>
		<select name="idBrand"  class="form-control" id="exampleSelect1">
		<!-- BEGIN brand -->
			<option  value="{BRAND_ID}">{BRAND_NAME}</option>
		<!-- END brand -->
		</select>
	</div>
	<div class="form-group">
		<label>Select Category</label>
		<select name="idCategory" class="form-control" id="exampleSelect1">
		<!-- BEGIN category -->
			<option  value="{CATEGORY_ID}">{CATEGORY_NAME}</option>
		<!-- END category -->
		</select>
	</div>
	<div class="form-group">
		<label>Pret</label>
		<input type="text" name="pret" class="form-control" id = "name">
	</div>
	<div class="form-group">
		<label>Description</label>
		<textarea type="text" name="description" class="form-control"></textarea>
	</div>
	<div class="form-group">
		<label>Select image to upload:</label>
    	<input type="file" name="image" id="fileToUpload">
    </div>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>
<script>
$( document ).ready(function() {
    $("#plus_one").click(function () {
    	$('#plusminus').val( function(i, oldval) {
		    return parseInt( oldval, 10) + 1;
		});
    });
    $("#minus_one").click(function () {
    	$('#plusminus').val( function(i, oldval) {
    		if (oldval == 0) {
    			return 0;
    		} else {
		    	return parseInt( oldval, 10) - 1;
    		}
		});
    });
});
</script>
<!-- 
</form>
	<form method="POST">
		<input type="name" name="name"><br>
		<input type="number" name="stoc"><br>
		<input type="number" name="idCategory"><br>
		<input type="number" name="idBrand"><br>
		<input type="submit" name="submit" value="Add"><br>
	</form>
 -->