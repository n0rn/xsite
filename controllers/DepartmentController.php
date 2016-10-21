<?php

include_once ROOT. '/models/Departments.php';
include_once ROOT. '/models/Workers.php';

    class DepartmentController
    {
        public function actionIndex()
        {
        $departments = array();
        $departments = Departments::getDepartmentList();

            $workers = array();
            $workers = Workers:: getWorkersList(20);

            require_once(ROOT. '/views/departments/index.php');

            return true;
    }

        public function actionDepartment($departmentId) {

            $departments = array();
            $departments = Departments::getDepartmentList();

            $departmentCatalog = array();
            $departmentCatalog = Departments::getDepartmentListByCategory($departmentId);

            require_once(ROOT. '/views/departments/category.php');

            return true;
        }
    }