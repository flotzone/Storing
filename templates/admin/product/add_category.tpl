<link rel="stylesheet" href="{SITE_URL}/externals/bootstrap/css/bootstrap.min.css" type="text/css">

 <table class="table table-condensed">
    <thead>
      <tr>
        <th>ID</th>
        <th>Brand Name</th>
        <th>Image</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <!-- BEGIN category -->
      <tr>
        <td>{CATEGORY_ID}</td>
        <td>{CATEGORY_NAME}</td>
        <td><img src="{SITE_URL}/images/category/{CATEGORY_IMAGE}" height="30px" width="25px" ></td>
        <td><a href="{SITE_URL}/admin/product/deletec/id/{CATEGORY_ID}/"" title="Delete" class="delete_state">Delete</a></td>
      </tr>
     <!-- END category -->
    </tbody>
  </table>

<form method="POST" enctype="multipart/form-data">
	<div class="form-group">
		<label>Category Name</label>
		<input type="text" name="name" class="form-control" id = "name" >
	</div>
  <div class="form-group">
    <label>Select image to upload:</label>
      <input type="file" name="image" id="fileToUpload">
    </div>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>