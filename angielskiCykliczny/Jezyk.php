<?php
require_once("PolaczenieBaza.php");
class Jezyk extends PolaczenieBaza
{
	public $wskaznik=0;
	public $dataZBazy;
	public $dzisiaj;
	public $wszystkieSlowka=array();
	public $dzisiejszeSlowka=array();
	public function __construct(){
		parent::__construct();
		$this->dzisiaj=date("Y-m-d");
		$this->dataZBazy=$this->zTabeliDoTablicy("select data from index_i_data")[0]["data"];
		//$this->con->query("update index_i_data set wskaznik");
		$this->wskaznik=$this->zTabeliDoTablicy("select wskaznik from index_i_data")[0]["wskaznik"];
		$this->wszystkieSlowka=$this->zTabeliDoTablicy("select angielski, polski from slowka");
		if($this->dataZBazy!=$this->dzisiaj){
			$this->wskaznik=$this->wskaznik+5;
			if($this->wskaznik>=count($this->wszystkieSlowka))
				$this->wskaznik=0;
			$this->con->query("update index_i_data set wskaznik=".$this->wskaznik);
			$this->con->query("update index_i_data set data=now()");
			}
			
			if($this->wskaznik+4<count($this->wszystkieSlowka))
				for($i=$this->wskaznik;$i<=$this->wskaznik+4;$i++)
					array_push($this->dzisiejszeSlowka, $this->wszystkieSlowka[$i]);
			else
				for($i=$this->wskaznik;$i<count($this->wszystkieSlowka);$i++)
					array_push($this->dzisiejszeSlowka, $this->wszystkieSlowka[$i]);
		
		
	}
	
	
	public function zTabeliDoTablicy($sql){//tablica tablic asocjacyjnych
		$tablica=array();
	$wynik=$this->con->query($sql);//select
			while($row=$wynik->fetch_assoc()){
				array_push($tablica, $row);
			}
			return $tablica;
	}
	
	
	
	
}
//$jezyk=new Jezyk();
//print_r($jezyk->dzisiejszeSlowka);
?>