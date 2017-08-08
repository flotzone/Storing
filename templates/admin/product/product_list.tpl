{PAGINATION}
<div id="adminList" class="box-shadow">
	<table class="big_table" frame="box" rules="all">
		<thead>
			<tr>
	
				<th style="text-align: center;">Id</th>
				<th style="text-align: center;">Name</th>
				<th style="text-align: center;">Stoc</th>
				<th style="text-align: center;">CategoryId</th>
				<th style="text-align: center;">BrandId</th>
				<th style="text-align: center;">Date</th>
				<th style="text-align: center;">Price</th>
				<th style="text-align: center;">IsActive</th>
				<th style="text-align: center;">Actions</th>
			</tr>
		</thead>
		<tbody>
		<!-- BEGIN product_list -->
			<tr>
				<td style="text-align: center;">{ID}</td>
				<td style="text-align: center;"><a href="{SITE_URL}/admin/product/show/id/{ID}" >{NAME}</a></td>
				<td style="text-align: center;">{STOC}</td>
				<td style="text-align: center;">{CATEGORYNAME}</td>
				<td style="text-align: center;">{BRANDNAME}</td>
				<td style="text-align: center;">{DATA}</td>
				<td style="text-align: center;">{PRICE}</td>
				<td style="text-align: center;">{ISACTIVE}</td>
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