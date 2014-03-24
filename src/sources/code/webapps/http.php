<?php

$get_param = $_GET['q'];
$post_param = $_POST['user_name'];
$is_ajax = isset($_REQUEST['ajax']) ? $_REQUEST['ajax'] : 0;
$user_agent = $_SERVER['HTTP_USER_AGENT'];

foreach ($_FILES as $file) {
  file_save($file);
}

if (!isset($_COOKIE['time'])) {
  $_COOKIE['time'] = time();
}

header('Location: http://www.example.com/');
http_response_code(303);
