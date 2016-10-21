<?php

include_once ROOT. '/models/Departments.php';
include_once ROOT. '/models/Workers.php';

class WebsiteController{
    
    public function actionIndex(){
        
        $departments = array();
        $departments = Departments::getDepartmentList();

        $workers = array();
        $workers = Workers:: getWorkersList(20);

        require_once(ROOT. '/views/website/index.php');
        
        return true;
    }

}

