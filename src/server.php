<?php
/****************************************
	The Main Server Source.
	Name : server.php
	Author : Alexandre BM <s@rednaks.tn>
	DATE : 03-08-2012
	Contributors : 

*****************************************/
if (!empty($_GET)){
	if(!empty($_GET['getcmd'])){
	if($_GET['getcmd'] === "1"){
	
		$fp = fopen('cmd.txt','r');
		if($fp){
			$cmd = fread($fp, 255);
			fclose($fp);
			unlink('cmd.txt');
			echo $cmd;
		}else
			echo "No cmd found !";
	}}
	if(!empty($_GET['setcmd'])){ 
		$cmd = $_GET['setcmd'];
		$fp = fopen('cmd.txt','w+');
		fwrite($fp, $cmd);
		fclose($fp);
	}
}

?>
