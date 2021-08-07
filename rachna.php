<?php

// function to calculate
// Hamming distance
function hammingDist($str1, $str2)
{
    $i = 0; $count = 0;
	$lengthstr1 = strlen($str1);
	$lengthstr2 = strlen($str2);

    if ($lengthstr1 > $lengthstr2)	
		$space = $lengthstr1;
	else
		$space = $lengthstr2;
	
    while ($i < $space) 
		{
        if ($str1[$i] != $str2[$i])
            $count++;
        $i++;
    }
    return $count;
}
 
    // Driver Code
    $str1 = "@Rachna0403";
    $str2 = "@Rachna";
 
    // function call
	 $value= hammingDist ($str1, $str2);
	// echo $value;

// $list = array (
//     array('Name', 'email', 'Slack username', 'Biostack', 'twitter handle', 'Hamming Distance'),
//     array('Rachna', 'behl.rachna43@gmail.com', '@Rachna', 'Epigenomics', '@Rachna0403',$value),
// );


// $fp = fopen('filephp.csv', 'w');
// echo "<table>";
// echo "<border=2>";
// foreach ($list as $fields) {
//       fputcsv($fp, $fields);
// 	echo "<tr>";
//	foreach ($fields as $field) {
//	echo "<td>";
//	echo $field;
//	echo "</td>";}
//	echo "</tr>";
//}
//echo "</table>";

//print "your file is created";
//fclose($fp);

echo "Rachna,behl.rachna43@gmail.com,@Rachna,Epigenomics,@Rachna0403,$value\n"
?>
