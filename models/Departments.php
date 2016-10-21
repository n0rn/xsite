<?php

class Departments
{

    public static function getDepartmentList(){
        $db = Db::getConnection();

        $departmentList = array();

        $result = $db->query('SELECT id, name FROM Departments');

        $i = 0;
        while($row = $result->fetch()) {

            $departmentList[$i]['id'] = $row['id'];
            $departmentList[$i]['name']= $row['name'];
            $i++;

        }

        return $departmentList;
    }

    public static function getDepartmentListByCategory($departmentId = false){

        if($departmentId) {

            $db = Db::getConnection();
            $worker = array();
            $result = $db->query("SELECT id,name, birhday FROM Users ORDER BY departmentId DESC");

            $i =0;
            while($row = $result->fetch()) {
                $worker[$i]['id'] = $row['id'];
                $worker[$i]['name'] = $row['name'];
                $worker[$i]['birhday'] = $row['birhday'];
                $i++;
            }

            return $worker;
        }
    }

}