<?php
# PHP_TASK - Deepika (deepikavs80@gmail.com)
# Date : 18/8/20018

Class wordCount{
	// Function for DB connection
	function createConnection() {
		$con = mysqli_connect("localhost","root","","php_task");
		return $con;
	}
	
	// Function for word count 
	function countWordsinFile($myfile) {
		$str = file_get_contents($myfile); // Get file contents
		$arr = array_unique(str_word_count($str, 1)); // Find the unique words in file
		
		echo "Direct Print From File : ".json_encode($arr).PHP_EOL;
		
		$ins = array();
		foreach ($arr as $key=>$val) {
			$ins[] = '("'.$val.'")';
		}
		
		$dbobj = $this->createConnection();
		mysqli_query($dbobj, 'INSERT INTO wordcount_details (words) VALUES '.implode(',', $ins)); // Insert the data to table
		
		echo "Distinct Count From File : ".count($arr).PHP_EOL;
		
		$data = mysqli_query($dbobj,'SELECT DISTINCT T.words FROM sample_table T, wordcount_details W WHERE T.words = W.words'); // Get the watch list data
		
		$dataList = '';
		$i = 0;
		
		while($vl =  mysqli_fetch_array($data)) {
			$dataList .= $vl['words'].PHP_EOL;
			$i++;
		}
		
		echo "Distinct Unique words : ".$i."\n";
		echo "Watchlist words : ".$dataList;
	}
}

$file = __DIR__ . DIRECTORY_SEPARATOR .'textfiles/big.txt';
$Fobj = new wordCount();
$Fobj->countWordsinFile($file);
