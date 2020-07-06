<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = ["title", "narrative", "position", "sh" , "del", "id"];
const DBUid = "uid";

$tmp_ar = array_keys($_POST);
for ($i = 0; $i< sizeof(DBInfo); $i++){
	if (!in_array(DBInfo[$i], $tmp_ar)) {
		echo json_encode(['rn' => C_Str[0]]);
		exit;
	}
}
if (!in_array(DBUid, $tmp_ar)) {
	echo json_encode(['rn' => C_Str[0]]);
	exit;
}

if (sizeof($_POST[DBInfo[0]]) == sizeof($_POST[DBInfo[1]]) && sizeof($_POST[DBInfo[1]]) == sizeof($_POST[DBInfo[2]]) &&
	sizeof($_POST[DBInfo[2]]) == sizeof($_POST[DBInfo[3]]) && sizeof($_POST[DBInfo[3]]) == sizeof($_POST[DBInfo[4]]) &&
	sizeof($_POST[DBInfo[4]]) == sizeof($_POST[DBInfo[5]])) {
	foreach (DBInfo as $val) {
		foreach($_POST[$val] as $valsub) {
			if (empty($valsub) &&  ($valsub != "0")) {
				echo json_encode(['rn' => C_Str[0]]);
				exit;
			}
		}			
	}
	$err_ar = "";
	foreach($_POST[DBInfo[0]] as $idx => $val) {
		if (intval($_POST[DBInfo[4]][$idx]) == 1) {
			$sql = "delete from `works` where `id` = :id && `uid` = :uid ";
			$stmt = $pdo->prepare($sql);
			$stmt->bindValue(':id', $_POST[DBInfo[5]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':uid', $_POST[DBUid], PDO::PARAM_STR);
			if (!$stmt->execute()) {
				$err_ar = C_Str[2];
			}
		} else if (intval($_POST[DBInfo[5]][$idx]) == 0) {
			$sql = "insert into `works` (`title`, `narrative`, `position`, `uid`, `sh`) values(:title, :narrative, :position, :uid, :sh)";
			$stmt = $pdo->prepare($sql);
			$stmt->bindValue(':title', $_POST[DBInfo[0]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':narrative', $_POST[DBInfo[1]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':position', $_POST[DBInfo[2]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':sh', $_POST[DBInfo[3]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':uid', $_POST[DBUid], PDO::PARAM_STR);
			if (!$stmt->execute()) {
				$err_ar = C_Str[2];
			}
		} else {
			$sql = "update `works` set `title` = :title, `narrative` = :narrative, `position` = :position, `sh` = :sh where `id` = :id";
			$stmt = $pdo->prepare($sql);
			$stmt->bindValue(':title', $_POST[DBInfo[0]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':narrative', $_POST[DBInfo[1]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':position', $_POST[DBInfo[2]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':id', $_POST[DBInfo[5]][$idx], PDO::PARAM_STR);
			$stmt->bindValue(':sh', $_POST[DBInfo[3]][$idx], PDO::PARAM_STR);

			if (!$stmt->execute()) {
				$err_ar = C_Str[2];
			}
		}
	}
} else {
	echo json_encode(['rn' => C_Str[0]]);
	exit;
}
if ($err_ar != "") {
	echo json_encode(['rn' => $err_ar]);
} else {
	echo json_encode(['rn' => C_Num[1]]);
}
?>