<?php


class Workers
{
    const SHOW_BY_DEFAULT = 20;


    public static function getWorkersList($count = self::SHOW_BY_DEFAULT){

        $count = intval($count);
        $db = Db::getConnection();

        $workersList = array();
        $result = $db->query("SELECT id, name, birhday, departmenId, positionId FROM Users ORDER BY id DESC LIMIT" . $count);

        $i = 0;
        while($row = $result->fetch()){
            $workerList[$i]['id'] = $row['id'];
            $workerList[$i]['name'] = $row['name'];
            $workerList[$i]['birhday'] = $row['birhday'];
            $i++;
        }
        return $workerList;

    }

    public static function getPositionsById($id){

        $id = intval($id);

        if($id) {

            $db = Db::getConnection();
            $result = $db->query("SELECT * from  Position WHERE id=". $id);
            $result->setFetchMode(PDO::FETCH_ASSOC);

            return $result->fetch();
        }
    }



}