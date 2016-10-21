<?php
include_once ROOT. '/models/Departments.php';
include_once ROOT. '/models/Workers.php';

class WorkerController {

    public function activeView($positionId){

        $positions = array();
        $positions = Positions::getPositionsById($positionsId);

        require_once(ROOT. '/view/worker/view.php');

        return true;
    }

}