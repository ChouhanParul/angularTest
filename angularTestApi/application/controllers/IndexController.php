<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        echo "fksdf";die;
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
        $tblUser = new Application_Model_DbTable_User();
        $users = $tblUser->fetchAll();
    }


}

