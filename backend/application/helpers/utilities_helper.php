<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function sanitize($in) {
	return addslashes(htmlspecialchars(strip_tags(trim($in))));
}

function sanitize_array($arr) {
	foreach ($arr as $k => $v) {
		$arr[$k] = addslashes(htmlspecialchars(strip_tags(trim($v))));
	}
	return $arr;
}

function clean($in){
	return preg_replace('/[^A-Za-z0-9\-]/','',$in);
}

function generate_json($data) {
	header("access-control-allow-origin: *");
	header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
	header('Content-type: application/json');
	echo json_encode($data);
}

function get_request_data(){
	return json_decode(file_get_contents('php://input'),true);
}

function today() {
	date_default_timezone_set('Asia/Manila');
	return date("Y-m-d");
}
function today_bi() {
	date_default_timezone_set('Asia/Manila');
	return date("d-m-Y");
}

function today_oracle(){
	date_default_timezone_set('Asia/Manila');
	return date('d-M-y');
}

function today2() {
	date_default_timezone_set('Asia/Manila');
	return date("m/d/Y");
}

function today_text() {
	date_default_timezone_set('Asia/Manila');
	return date("Y/m/d");
}

function today_date() {
	date_default_timezone_set('Asia/Manila');
	return date("m/d/Y");
}
function today_date2() {
	date_default_timezone_set('Asia/Manila');
	return date("m/d/Y",strtotime("+90 days"));
}

function today_text2() {
	date_default_timezone_set('Asia/Manila');
	return date("Y/m/d", strtotime("+90 days"));
}
function isLoggedIn(){
	$CI = & get_instance();
	if($CI->session->userdata('isLoggedIn') == false) {
		if(empty($CI->session->userdata('user_id'))) { //kapag destroyed na ung session
			redirect('main/logout');
		}
	} else{
		if(empty($CI->session->userdata('user_id'))) {  //kapag destroyed na ung session
			redirect('main/logout');
		}
	}
}
function todaytime() {
	date_default_timezone_set('Asia/Manila');
	return date("Y-m-d G:i:s");
}
function project_name(){
	echo "WeazySurvey";
}

function company_name() {
	echo "WeazySurvey";
}

function company_name_php() { //please change the content same as company_name() function.
	return "WeazySurvey ";
}


function project_initial() {
	echo "WZ";
}
function company_initial() {
	echo "WZ";
}

function powered_by(){
	echo "Powered by <a href='http://unicornwaeil.000webhostapp.com/' class='external' >unicornwaeil</a>";
}

function encrypt_array_value_by_key($array,$key){
	for($i = 0; $i < count($array); $i++){
		$array[$i][$key] = en_dec('en',$array[$i][$key]); 
	}
	return $array;
}

function en_dec($action, $string) //used for token
{
	$output = false;

	$encrypt_method = "AES-256-CBC";
	$secret_key = 'JUVY';
	$secret_iv = 'JudithAndIvy';

	// hash
	$key = hash('sha256', $secret_key);

	// iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
	$iv = substr(hash('sha256', $secret_iv), 0, 16);

	if( $action == 'en' ) 
	{
	  $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
	  $output = base64_encode($output);
	}
	else if( $action == 'dec' )
	{
	  $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
	}

	return $output;
}

function random_code($length) {
    $alphabet = "abcdefghijklmnopqrstuwxyz";
    $alphabetUpper = "ABCDEFGHIJKLMNOPQRSTUWXYZ";
    $alphabetNumber = "0123456789";
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabetNumber) - 1; //put the length -1 in cache
    for ($i = 0; $i < $length; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n].$alphabetUpper[$n].$alphabetNumber[$n];
    }
    return implode($pass); //turn the array into a string
}

function multi_array_search($key,$value,$array) {
	foreach ($array as $k => $v) {
		if ($v[$key] === $value) {
			return $k;
		}
	}
	return null;
 }

function generate_player_no(){
	$letters = array("A","B","C","D","E",
					 "F","G","H","I","J",
					 "K","L","M","N","O",
					 "P","Q","R","S","T",
					 "U","V","W","X","Y",
					 "Z");

	$numbers = array("1","2","3","4","5",
					 "6","7","8","9","0");

	$generated_key = array();
	for($x=0; $x < 5; $x++){	 
		if (count($generated_key) < 4) {
			$get_val = array_rand($letters, 1);

			array_push($generated_key, $letters[$get_val]);
		}else{
			$get_val = array_rand($numbers, 1);
			array_push($generated_key, $numbers[$get_val]);
		}
	}
	$generated_key = implode("",$generated_key);

	return $generated_key;
}


function checkPassword($passwordEnter,$passwordRetype){
	//this function will check if the password contain at least 1 number/letter, 8 character minimum requirement and 1 upper and lowercase
	
	$reg = "%^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$%"; //regex combination 
	
	if(!preg_match($reg, $passwordEnter)) {
		 //"Password does not contain at least 1 number/letter, 8 character minimum requirement.";
		
		$data = array("success" => 0, "message" => 'Password must contains at least eight characters, including at least one number and includes both lower and uppercase letters');//error in password requirement
	
	}else if($passwordEnter != $passwordRetype){
		
		$data = array("success" => 0, "message" => 'New Password and Re-type New Password do not match'); //password does not match
	
	}else{
		
		$data = array("success" => 1); //good to go strong password
	
	}
	return ($data);

	//ramdc
}


function &keysToLower(&$obj)
{
    $type = (int) is_object($obj) - (int) is_array($obj);
    if ($type === 0) return $obj;
    foreach ($obj as $key => &$val)
    {
        $element = keysToLower($val);
        switch ($type)
        {
        case 1:
            if (!is_int($key) && $key !== ($keyLowercase = strtolower($key)))
            {
                unset($obj->{$key});
                $key = $keyLowercase;
            }
            $obj->{$key} = $element;
            break;
        case -1:
            if (!is_int($key) && $key !== ($keyLowercase = strtolower($key)))
            {
                unset($obj[$key]);
                $key = $keyLowercase;
            }
            $obj[$key] = $element;
            break;
        }
    }
    return $obj;
}

function validateDate($date, $format = 'Y-m-d')
{
    $d = DateTime::createFromFormat($format, $date);
    // The Y ( 4 digits year ) returns TRUE for any integer with any number of digits so changing the comparison from == to === fixes the issue.
    return $d && $d->format($format) === $date;
}



function validateRequiredFields($required_fields){
	$empty_fields = 0;
	foreach ($required_fields as $key => $value) {
	    $value = trim($value);
	    if (empty($value))
	        // echo "$key empty <br/>";
	        $empty_fields +=1;
	}
	if($empty_fields <=0){
		return true;
	} else {
		return false;
	}
}

function pincode(){
	return en_dec('dec','TmN6eXFFSGF6YjNQb2JnaGloaDV5Zz09');
}

function generate_table($fields,$row){
	$html = '<table class=" table nowrap table-dark table-hover"><thead>';
	// Form the thead
	foreach($fields as $f){
		$html .='<th class=" text-uppercase">'.$f.'</th>';
	}
	$html .='</thead><tbody>';

	// Form the tbody
	for($i = 0; $i < count($row); $i++){
		$html .= '<tr>';
		for($x = 0; $x < count($row[$i]); $x++){
			$html .='<td  class="clickable" data-value="'.$row[$i][0].'" >'.$row[$i][$x].'</td>';
		}
		$html .= "</tr>";
	}
	// foreach($row as $r){
	// 	$html .= '<tr>';
	// 	foreach ($r as $rr){
	// 		$html .='<td  class="clickable" data-value="'.$rr[0].'" >'.$rr.'</td>';
	// 	}
	// 	$html .= "</tr>";
	// }
	$html .= "</table>";
	return $html;
}

function convert_result_array($row){
	$rows = [];
	foreach($row as $k=>$v){
		$tmp = [];
		foreach($v as $kk=>$vv){
			$tmp[] = $vv;
		}
		$rows[] = $tmp;
	}
	return $rows;
}