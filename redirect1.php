<?php
session_start();
include('defines.php');
if($_SESSION['login']==0)
{
    redirect('login.php');
}
else
{
    redirect('acc.php');
}
?>