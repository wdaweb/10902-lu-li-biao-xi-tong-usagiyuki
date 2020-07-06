<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = ["uid", "tab", "type"];

if (!empty($_POST)) {
	if (sizeof($_POST) == sizeof(DBInfo)) {
		foreach(DBInfo as $val) {
			if (empty($_POST[$val])) {
				echo json_encode(['rn' => C_Str[0]]);
				exit;
			}
		}
		$tab = $_POST[DBInfo[1]];
		$sql = "select * from `" . $tab . "` where `uid` = :uid";
		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':uid', $_POST[DBInfo[0]], PDO::PARAM_STR);
		
		if (!$stmt->execute()) {
			echo json_encode(['rn' => C_Str[2], 'ar' => $_POST[DBInfo[1]]]);
		} else {
			if ($_POST[DBInfo[2]] == "1") {
				$row = $stmt->fetch(PDO::FETCH_ASSOC);
			} else if ($_POST[DBInfo[2]] == "2") {
				$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
			}
			echo json_encode(['rn' => $row]);
		}
	} else {
		echo json_encode(['rn' => C_Str[0]]);
	}
}
?>