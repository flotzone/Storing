<?php

$articleView = new Article_View($tpl);
$articleModel = new Article();
// all actions MUST set  the variable  $pageTitle
$pageTitle = $option->pageTitle->action->{$registry->requestAction};
switch ($registry->requestAction)
{
	default:
	case 'list':
		// call articleView method to view the list page
	$list = $articleModel->getArticleList();
	
	// $articleView->showPage('home');
	break;
	case 'show':
		$list = $articleModel->getArticleList();
		$articleView->showArticle('list_article',$list);
	break;
	case 'show_content':
	
		$article = $articleModel->getArticleById($registry->request['id']);
		

		$articleView->showArticleContent('article_content',$article);
	break;
	
}