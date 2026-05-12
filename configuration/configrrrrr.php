<?php
// Change Bank Name
define("WEB_TITLE","AureusIBC"); 
// Change Web URL https://domain.com or https://sud.domain.com  with No Ending splash "/"
define("WEB_URL","https://aureusibc.com/"); 
// Change Your Website Email
define("WEB_EMAIL","support@aureusibc.com"); 
// Change Your Website Phone Number
define("WEB_PHONE","8788888876"); 

// Do not Edit
$web_url = WEB_URL;
$web_title = WEB_TITLE;
$web_phone = WEB_PHONE;
$web_email = WEB_EMAIL;
// Do not Edit


// Set database Below
function dbConnect(){
    $servername = "localhost";
    //Change Database Username "root"
    $username = "blacwyco_aureusibc"; 
    //Change Database Password ""
    $password = "792556aA*aureus";
    //Change Database ""
    $database = "blacwyco_aureus";
    //Do not edit... That's all
    $dns = "mysql:host=$servername;dbname=$database";

    try {
        $conn = new PDO($dns, $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
}
//return dbConnect();

function inputValidation($value): string
{
    return trim(htmlspecialchars(htmlentities($value)));
}