<?php

$id = $_REQUEST['id'];
$res = mysql_query("SELECT * FROM news WHERE id_news = $id");