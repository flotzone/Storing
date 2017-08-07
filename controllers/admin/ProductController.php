<?php
$productModel= new Product();
$productView= new Product_View($tpl);
$pageTitle = $option->pageTitle->action->{$registry->requestAction};

switch ($registry->requestAction) {
	default:
	// this will list all products
	case 'list':
		$page = (isset($registry->request['page']) && $registry->request['page']>0) ? $registry->request['page'] : 1;
		$list = $productModel->getProductList($page);
		$product = $productView->showProductList('product_list', $list, $page);
		break;

	case 'add':
		$category = $productModel->selectCategory(); 
		$product = $productView->showDataCategory('product_add', $category);
		$brand = $productModel->selectBrand(); 
		$product1 = $productView->showDataBrand('product_add', $brand);
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$data['name'] = (isset($_POST['name'])) ? $_POST['name']:'';
			$data['idCategory'] = (isset($_POST['idCategory'])) ? $_POST['idCategory']:'';
			$data['idBrand'] = (isset($_POST['idBrand'])) ? $_POST['idBrand']:'';
			$data['description'] = (isset($_POST['description'])) ? $_POST['description']:'';
			$data['stoc'] = (isset($_POST['stoc'])) ? $_POST['stoc']:'';
			$data['pret'] = (isset($_POST['pret'])) ? $_POST['pret']:'';
			
			$target_dir = "images/uploads/";
			$filename = md5(microtime());

			$imageFileType = pathinfo($_FILES["image"]['name'],PATHINFO_EXTENSION);	
			
			if($imageFileType == 'jpeg' || $imageFileType == 'jpg'){
				$data['image'] = $filename . '.' . $imageFileType;
				move_uploaded_file($_FILES['image']['tmp_name'], $target_dir . $filename . '.' . $imageFileType);
				$productModel->addProduct($data);
			}
		}
		break;

	case 'delete':
		# code...
		break;

	case 'edit':
		# code...
		break;
	// this will show a product
	case 'show':
		$certainProduct = $productModel->getProductById($registry->request['id']);
		$product = $productView->showCertainProduct('product_show', $certainProduct);
		break;
}