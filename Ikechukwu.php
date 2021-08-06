<?php
function hamDist($x, $y)
{
    $i = 0; $count = 0;
    while (isset($x[$i]) != '' & isset($y[$i]) != '')
    {
        if ($x[$i] != $y[$i])
            $count++;
        $i++;
    }
    return $count;
}
    $name = "Ikechukwu Okoye";
    $email = "iyke614@gmail.com";
    $slack_user = "@ikechukwu";
    $biostack = "Data science";
    $twit = "@iyke045";
 
    $ham =  hamDist($slack_user, $twit);
    echo $name . " ".  $email . " ".  $slack_user. " ".  $biostack. " ".  $twit . " ".  $ham
?>
