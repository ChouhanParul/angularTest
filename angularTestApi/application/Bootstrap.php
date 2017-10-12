<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    protected function _initAutoload()
    {
        $moduleLoader = new Zend_Application_Module_Autoloader(
        array(
                'namespace' => '',
                'basePath' => APPLICATION_PATH
        ));
        Zend_Loader_Autoloader::getInstance()->registerNamespace('My_');
        return $moduleLoader;
    }
	
	// enable the rest route for the entire application.
    protected function _initRestRoute()
    {
        $front = Zend_Controller_Front::getInstance();
        $router = $front->getRouter();

        // Specifying all controllers as RESTful:
        //$restRoute = new Zend_Rest_Route($front);
        //$router->addRoute('default', $restRoute);


        // Specifying the \"api\" module only as RESTful:
        $restRoute = new Zend_Rest_Route($front, array(), array(
                'api',
        ));
        $router->addRoute('rest', $restRoute);


        // Specifying the \"mymodule\" module as RESTful, and the \"customer\" controller of the
        // \"api\" module as RESTful:
        /*$restRoute = new Zend_Rest_Route($front, array(), array(
                'mymodule',
                'api' => array('customer'),
        ));
        $router->addRoute('rest', $restRoute);*/
    }
    public function _initDatabase(){
        $config = new Zend_Config_Ini('../application/configs/application.ini', APPLICATION_ENV);		
        $params = $config->resources->db->params->toArray();		
        //$params['profiler'] = true;
        $db = Zend_Db::factory($config->resources->db->adapter, $params);

        //$db->getProfiler()->setEnabled(true);
        Zend_Db_Table::setDefaultAdapter($db);
        Zend_Registry::set('db', $db);

        // Print here. To check the default db params and values saved in application.ini
        /*$abc = $config->toArray();
        echo json_encode($abc['resources']['db']['adapter'], JSON_PRETTY_PRINT);exit();
        echo json_encode($abc['resources']['db']['params'], JSON_PRETTY_PRINT);exit();*/
    }
}

