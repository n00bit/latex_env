// create an smarty object of our customized class
$smarty = new Smarty() ;

// basic assignment for passing data to template file
$smarty->assign('title', 'Test Title');
$smarty->assign('description', 'Test Description');

// show the template
$smarty->display('index.tpl');