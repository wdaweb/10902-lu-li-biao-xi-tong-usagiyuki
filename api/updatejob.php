<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = [ "uid", "nature", "period", "money", "place", "category", "id"];

for ($i = 0; $i< sizeof(DBInfo); $i++){
	$che_temp = array_keys($_POST);
	if (!in_array(DBInfo[$i], $che_temp)) {
		echo json_encode(['rn' => C_Str[0]]);
		exit;
	}
}

if (sizeof($_POST) == sizeof(DBInfo)) {
	foreach(DBInfo as $val) {
		if (empty($_POST[$val]) && ($_POST[$val] != "0")) {
			echo json_encode(['rn' => C_Str[0]]);
			exit;
		}
	}
	if (intval($_POST[DBInfo[6]]) == 0) {
		$sql = "insert into `jobconditions` (`nature`, `period`, `money`, `place`, `category`, `uid`) values(:nature, :period, :money, :place, :category, :uid)";
	} else {		
		$sql = "update `jobconditions` set `nature` = :nature, `period` = :period, `money` = :money, `place` = :place, `category` = :category where `uid` = :uid";	
	}

	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(':uid', $_POST[DBInfo[0]], PDO::PARAM_STR);
	$stmt->bindValue(':nature', $_POST[DBInfo[1]], PDO::PARAM_STR);
	$stmt->bindValue(':period', $_POST[DBInfo[2]], PDO::PARAM_STR);
	$stmt->bindValue(':money', $_POST[DBInfo[3]], PDO::PARAM_STR);
	$stmt->bindValue(':place', $_POST[DBInfo[4]], PDO::PARAM_STR);
	$stmt->bindValue(':category', $_POST[DBInfo[5]], PDO::PARAM_STR);
	if (!$stmt->execute()) {
		echo json_encode(['rn' => C_Str[2]]);
	} else {
		echo json_encode(['rn' => C_Num[1]]);
	}
} else {
	echo json_encode(['rn' => C_Str[0]]);
}
?>