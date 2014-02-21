<?php

/**
 * Home
 * @author:Laven<190296465@vip.qq.com>
 * @copyright:Copyright 2009 Laven
 * @create:2010-11-13
 * @modify:2014-01-03
 */
class HomeAction extends Action {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $view = new View('index');
        $Obj = new NewsTable();
        $arcList = $Obj->find();
        $view->set('arcList', $arcList);
        $view->renderWebHtml($view);
    }

    function details() {
        $Obj = new NewsTable();
        $view = new View('details');
        $id = (int) $_GET[1];
        try {
            $Obj->load($id);
        } catch (Exception $exc) {
            $this->error(404);
        }
        $view->set('DataInfo', $Obj);
        $view->renderWebHtml($view);
    }

}

?>