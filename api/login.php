<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = ["acc", "pwd"];

if (!empty($_POST)) {
	if (sizeof($_POST) == sizeof(DBInfo)) {
		foreach(DBInfo as $val) {
			if (empty($_POST[$val])) {
				echo json_encode(['rn' => C_Str[0]]);
				exit;
			}
		}
		$sql = "select * from `accdb` where `acc` = :acc && `pwd` = :pwd";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':acc', $_POST[DBInfo[0]], PDO::PARAM_STR);
		$stmt->bindValue(':pwd', $_POST[DBInfo[1]], PDO::PARAM_STR);
		
		if (!$stmt->execute()) {
			echo json_encode(['rn' => C_Str[2]]);
		} else {			
			$row = $stmt->fetch(PDO::FETCH_ASSOC);
			if ($row && (gettype($row)=="array")) {
				echo json_encode(['rn' => intval($row['id'])]);
			} else {
				echo json_encode(['rn' => C_Str[1]]);
			}
		}
	} else {
		echo json_encode(['rn' => C_Str[0]]);
	}
}
?>