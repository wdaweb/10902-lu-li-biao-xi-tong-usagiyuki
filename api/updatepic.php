<?php
    include_once "./db.php";
    include_once "../common/common_str.php";
    const DBInfo = ["id", "type"];
    const DBUid = "uid";
    const DBDel = "del";

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

    $len = sizeof($_FILES['img']['tmp_name']);
    $err_ar = "";
    for ($i = 0 ; $i < $len; $i++) {
        if (intval($_POST[DBInfo[0]][$i]) == 0) {
            if(!empty($_FILES['img']['tmp_name'][$i])) {
                $filename = "./images/" . $_FILES['img']['name'][$i];
                move_uploaded_file($_FILES['img']['tmp_name'][$i], ".".$filename);

                $sql = "insert into `album` (`path`, `uid`, `type`) values(:path, :uid, '0')";
                $stmt = $pdo->prepare($sql);
                $stmt->bindValue(':path', $filename, PDO::PARAM_STR);
                $stmt->bindValue(':uid', $_POST[DBUid], PDO::PARAM_STR);
                if (!$stmt->execute()) {
                    $err_ar = json_encode(['rn' => C_Str[2]]);
                }
            } else {
                echo json_encode(['rn' => C_Str[3]]);
                exit;
            }        
        } else if (!empty($_POST[DBDel]) && in_array($_POST[DBInfo[0]][$i], $_POST[DBDel])) {
            $sql = "delete from `album` where `id` = :id && `uid` = :uid";
            $stmt = $pdo->prepare($sql);
            $stmt->bindValue(':id', $_POST[DBInfo[0]][$i], PDO::PARAM_STR);
            $stmt->bindValue(':uid', $_POST[DBUid], PDO::PARAM_STR);
            if (!$stmt->execute()) {
                $err_ar = json_encode(['rn' => C_Str[2]]);
            }
        } else {
            if(!empty($_FILES['img']['tmp_name'][$i])) {
                $filename = "./images/" . $_FILES['img']['name'][$i];
                move_uploaded_file($_FILES['img']['tmp_name'][$i], ".".$filename);

                $sql = "update `album` set `path` = :path, `type` = :type where `id` = :id";
                $stmt = $pdo->prepare($sql);
                $stmt->bindValue(':path', $filename, PDO::PARAM_STR);
                $stmt->bindValue(':id', $_POST[DBInfo[0]][$i], PDO::PARAM_STR);
                $stmt->bindValue(':type', $_POST[DBInfo[1]][$i], PDO::PARAM_STR);
            } else {
                $sql = "update `album` set `type` = :type where `id` = :id";
                $stmt = $pdo->prepare($sql);
                $stmt->bindValue(':id', $_POST[DBInfo[0]][$i], PDO::PARAM_STR);
                $stmt->bindValue(':type', $_POST[DBInfo[1]][$i], PDO::PARAM_STR);
            }
            if (!$stmt->execute()) {
                $err_ar = json_encode(['rn' => C_Str[2]]);
            }
        }
    }

    if ($err_ar != "") {
        echo json_encode(['rn' => $err_ar]);
    } else {
        echo json_encode(['rn' => C_Num[1]]);
    }
?>