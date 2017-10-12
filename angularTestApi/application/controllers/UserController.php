<?php

class UserController extends Zend_Controller_Action
{

    public function init()
    {
        $this->_helper->viewRenderer->setNoRender(true);   
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $response = array();
        // action body
        $tblUser = new Application_Model_DbTable_User();
        $users = $tblUser->fetchAll();
        if(isset($users) && !empty($users)){
            $users = $users->toArray();
            $this->getResponse()->setHttpResponseCode(200);
            $response['data'] = $users;
        } else {
            $this->getResponse()->setHttpResponseCode(204);
        }
        $json = Zend_Json::encode($response);
        echo Zend_Json::prettyPrint($json, array("indent" => "	"));
    }


}

