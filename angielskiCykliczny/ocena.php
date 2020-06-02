<?php
require_once("Jezyk.php");
class Punkty extends Jezyk{
	public $komunikat='Test niezaliczony. Spróbuj ponownie. <a href="index.php">Kliknij tutaj.</a>';
	public function __construct(){
		if($_POST!=NULL){
			$punkty=0;
			parent::__construct();
			foreach($this->dzisiejszeSlowka as $asocjacyjna){
				$asAngielski=$asocjacyjna["angielski"];
				if($asocjacyjna["polski"]==$_POST[$asAngielski])
					$punkty++;
			}
			$procent=($punkty/count($this->dzisiejszeSlowka)*100);
			if($procent>=50)
				header('Location:https://www.facebook.com/');
			else echo $this->komunikat;
		}
		else echo $this->komunikat;
	}
}
$punkty=new Punkty();

?>