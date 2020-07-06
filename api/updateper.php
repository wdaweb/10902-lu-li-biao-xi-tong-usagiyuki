<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = ["uid", "sex", "name", "address", "status", "license", "height", "weight"];

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
	$sql = "select * from `personal` where `uid` = :uid";
	$stmt = $pdo->prepare($sql);
	$stmt->bindValue(':uid', $_POST[DBInfo[0]], PDO::PARAM_STR);
	$stmt->execute();
	
	if ($stmt->fetchColumn() > 0) {
		$sql = "update `personal` set `sex` = :sex, `name` = :name, `address` = :address, `status` = :status,
		`license` = :license, `height` = :height, `weight` = :weight where `uid` = :uid";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':uid', $_POST[DBInfo[0]], PDO::PARAM_STR);
		$stmt->bindValue(':sex', $_POST[DBInfo[1]], PDO::PARAM_STR);
		$stmt->bindValue(':name', $_POST[DBInfo[2]], PDO::PARAM_STR);
		$stmt->bindValue(':address', $_POST[DBInfo[3]], PDO::PARAM_STR);
		$stmt->bindValue(':status', $_POST[DBInfo[4]], PDO::PARAM_STR);
		$stmt->bindValue(':license', $_POST[DBInfo[5]], PDO::PARAM_STR);
		$stmt->bindValue(':height', $_POST[DBInfo[6]], PDO::PARAM_STR);
		$stmt->bindValue(':weight', $_POST[DBInfo[7]], PDO::PARAM_STR);
	} else {
		$sql = "insert into `personal` (`uid`, `sex`, `name`, `address`, `status`, `license`, `height`, `weight`) values
		(:uid, :sex, :name, :address, :status, :license, :height, :weight)";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':uid', $_POST[DBInfo[0]], PDO::PARAM_STR);
		$stmt->bindValue(':sex', $_POST[DBInfo[1]], PDO::PARAM_STR);
		$stmt->bindValue(':name', $_POST[DBInfo[2]], PDO::PARAM_STR);
		$stmt->bindValue(':address', $_POST[DBInfo[3]], PDO::PARAM_STR);
		$stmt->bindValue(':status', $_POST[DBInfo[4]], PDO::PARAM_STR);
		$stmt->bindValue(':license', $_POST[DBInfo[5]], PDO::PARAM_STR);
		$stmt->bindValue(':height', $_POST[DBInfo[6]], PDO::PARAM_STR);
		$stmt->bindValue(':weight', $_POST[DBInfo[7]], PDO::PARAM_STR);
	}
	
	if (!$stmt->execute()) {
		echo json_encode(['rn' => C_Str[2]]);
	} else {
		echo json_encode(['rn' => C_Num[1]]);
	}
} else {
	echo json_encode(['rn' => C_Str[0]]);
}
?>