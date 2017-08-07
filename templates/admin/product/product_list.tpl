<div id="adminList" class="box-shadow">
	<table class="big_table" frame="box" rules="all">
		<thead>
			<tr>
	
				<th>Id</th>
				<th>Name</th>
				<th>Stoc</th>
				<th>CategoryId</th>
				<th>BrandId</th>
				<th>Date</th>
				<th>Price</th>
				<th>IsActive</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		<!-- BEGIN product_list -->
			<tr>
				<td>{ID}</td>
				<td><a href="{SITE_URL}/admin/product/show/id/{ID}" >{NAME}</a></td>
				<td>{STOC}</td>
				<td>{CATEGORYNAME}</td>
				<td>{BRANDNAME}</td>
				<td>{DATA}</td>
				<td>{PRICE}</td>
				<td>{ISACTIVE}</td>
				<td>
					<table  class="action_table">
						<tr>
							<td width="25%"><a href="{SITE_URL}/admin/product/edit/id/{ID}/" title="Edit/Update" class="edit_state">Edit</a></td>
							<td width="25%"><a href="{SITE_URL}/admin/product/delete/id/{ID}/"" title="Delete" class="delete_state">Delete</a></td>
							
						</tr>
					</table>
				</td>
			</tr>
		<!-- END product_list -->
		</tbody>
	</table>
</div>