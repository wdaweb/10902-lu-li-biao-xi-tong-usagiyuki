<?php
include_once "./db.php";
include_once "../common/common_str.php";
const DBInfo = ["personal", "education", "experience", "autobiography", "jobconditions", "works", "album"];
const DBUid = "uid";
const DBType = "type";
const DBIndex = "index";
const DBDataType = "dtype";

if (!empty($_POST)) {
	if (!empty($_POST[DBUid]) && !empty($_POST[DBType]) && !empty($_POST[DBType])) {
		$idx = intval($_POST[DBIndex]);
		$len = sizeof(DBInfo);
		if (($idx < 0) || ($idx > sizeof(DBInfo))) {
			exit;
		}

		$tab = DBInfo[$idx];
		$sql = "";

		if ($_POST[DBType] == "1") {
			$sql = "select * from `" . $tab . "` where `uid` = :uid";
		} elseif ($_POST[DBType] == "2") {
			$sql = "select * from `" . $tab . "` where `uid` = :uid && `sh` = '1'";
		} elseif ($_POST[DBType] == "3") {
			$sql = "select * from `album` where `uid` = :uid && `type` = '" . (($idx + 1) % $len) . "'";
		} else {
			exit;
		}

		$stmt = $pdo->prepare($sql);
		$stmt->bindValue(':uid', $_POST[DBUid], PDO::PARAM_STR);
		
		if (!$stmt->execute()) {
		} else {
			if ($_POST[DBDataType] == "1") {
				$row = $stmt->fetch(PDO::FETCH_ASSOC);
			} else if ($_POST[DBDataType] == "2") {
				$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
			}
			echo json_encode(['rn' => $row]);
		}
	}
}
?>