<?PHP
######################################
# ������ Hyip_Rush Qiwi
# ����� Wmrush
# ICQ: 578-598-778
# Skype: molart111
######################################
# �������
function TimerSet(){
	list($seconds, $microSeconds) = explode(' ', microtime());
	return $seconds + (float) $microSeconds;
}

$_timer_a = TimerSet();


ini_set('date.timezone', 'Europe/Moscow');


# ����� ������
@session_start();

# ����� ������
@ob_start();

# Default
$_OPTIMIZATION = array();
$_OPTIMIZATION["title"] = "QIWI";
$_OPTIMIZATION["description"] = "QIWI";
$_OPTIMIZATION["keywords"] = "��������� Qiwi";

# ��������� ��� Include
define("CONST_WMRUSH", true);

# ������������� �������
function __autoload($name){ include("classes/_class.".$name.".php");}

# ����� ������� 
$config = new config;

# �������
$func = new func;

# ��������� REFERER
include("inc/_set_referer.php");

# ���� ������
$db = new db($config->HostDB, $config->UserDB, $config->PassDB, $config->BaseDB);
@include("config.php");

# �����
$referer_id = (isset($_COOKIE["ref"]) AND intval($_COOKIE["ref"]) > 0 AND intval($_COOKIE["ref"]) < 1000000) ? intval($_COOKIE["ref"]) : 1;
$db->Query("SELECT * FROM db_users WHERE id = '$referer_id'");
$ref = $db->FetchArray();
$ref_name = $ref['login'];



#��� ��� ������ ��� ������
$db->Query("SELECT * FROM db_online WHERE ip = '".$_SERVER['REMOTE_ADDR']."'");
if($db->NumRows() == 0) {
$db->Query("INSERT INTO db_online (ip, date) VALUES ('".$_SERVER['REMOTE_ADDR']."', '".time()."')");
}else{
//$q = $db->FetchArray();
$db->Query("UPDATE db_online SET date = '".time()."' WHERE ip ='".$_SERVER['REMOTE_ADDR']."'");
}
$dd_delll = time() - 600;
$db->Query("DELETE FROM db_online WHERE date < '$dd_delll'");

$db->Query("SELECT * FROM db_online");
$kol_users_online = $db->NumRows();
@include("inc/_header.php");

		if(isset($_GET["menu"])){
		
			$menu = strval($_GET["menu"]);
			
			switch($menu){
			
				case "404": include("pages/_404.php"); break; // �������� ������
				case "rules": include("pages/_rules.php"); break; // ������� �������
				case "about": include("pages/_about.php"); break; // � �������
				case "contacts": include("pages/_contacts.php"); break; // ��������
				case "news": include("pages/_news.php"); break; // �������
				case "success": include("pages/_success.php"); break; // �������
				case "golos": include("pages/_golos.php"); break; // �������
				case "market": include("pages/_market.php"); break; // ���������
				case "recovery": include("pages/_recovery.php"); break; // �������������� ������
				case "account": include("pages/_account.php"); break; // �������
				case "otziv": include("pages/_otziv.php"); break; // �������
				case "reminder": include("pages/_reminder.php"); break; // �������
				case "admin": include("pages/_admin.php"); break; // �������
				
				
				 
				
			# �������� ������
			default: @include("pages/_404.php"); break;
			
			}
			
		}else @include("pages/_index.php");


# ������
@include("inc/_footer.php");


# ������� ������� � ����������
$content = ob_get_contents();

# ������� �����
ob_end_clean();
	
	# �������� ������
	$content = str_replace("{!TITLE!}",$_OPTIMIZATION["title"],$content);
	$content = str_replace('{!DESCRIPTION!}',$_OPTIMIZATION["description"],$content);
	$content = str_replace('{!KEYWORDS!}',$_OPTIMIZATION["keywords"],$content);
	$content = str_replace('{!GEN_PAGE!}', sprintf("%.5f", (TimerSet() - $_timer_a)) ,$content);
	
	# ����� �������
	if(isset($_SESSION["user_id"])){
	
		$user_id = $_SESSION["user_id"];
		$db->Query("SELECT money_in, money_out FROM db_users WHERE id = '$user_id'");
		$balance = $db->FetchArray();
		
		$content = str_replace('{!BALANCE_IN!}', sprintf("%.2f", $balance["money_in"]) ,$content);
		$content = str_replace('{!BALANCE_OUT!}', sprintf("%.2f", $balance["money_out"]) ,$content);
	}
	
// ������� �������
echo $content;
?>