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

        $PageSize = 10;
        $PageNo = (int) @$_GET['PageNo'] ? (int) $_GET['PageNo'] : 1;
        $PageNum = ($PageNo - 1) * $PageSize;
        $Pager = new Pager();

        $Options = array();
        $Options['whereAnd'][] = array('lmID', '=1');
        if ($_GET[1]) {
            $cate = new CategoryTable;
            $cateRes = $cate->find(
                    array(
                        'whereAnd' => array(array('categoryTitle1', "='" . $_GET[1] . "'"))
                    )
            );
            if ($cateRes) {
                $searchCateidArrays = array();
                $searchCateidArrays[] = $cateRes[0]->id;
                $treeSearch = new Tree($cate->formatArray(1));
                $searchCateidArray = $treeSearch->getArray($cateRes[0]->id);
                foreach ($searchCateidArray as $v) {
                    $searchCateidArrays[] = $v['id'];
                };
                $searchCateidStrint = implode(',', $searchCateidArrays);
                $Options['whereAnd'][] = array('categoryID', 'in(' . $searchCateidStrint . ')');
            }
        }
        if ($_GET['keys']) {
            $Options['whereAnd'][] = array('title', 'like \'%' . $_GET['keys'] . '%\'');
        }
        $Options['order'] = array('creatTime'=>'desc');
        $Options['limit'] = "{$PageNum},{$PageSize}";
        $PagerData = $Pager->getPagerData($Obj->count($Options), $PageNo, '?', 2, $PageSize); //参数记录数 当前页数 链接地址 显示样式 每页数量
        $arcList = $Obj->find($Options);
        $view->set('arcList', $arcList);
        $view->set('PagerData', $PagerData);

        //推荐文章
        $tjList = $Obj->find(
                array(
                    'whereAnd' => array(array('lmID', '=1'), array('is_tj', '=1')),
                    'limit' => '0,10'
                )
        );
        $view->set('tjList', $tjList);

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

        $tjObj = new NewsTable();
        //推荐文章
        $tjList = $tjObj->find(
                array(
                    'whereAnd' => array(array('lmID', '=1'), array('is_tj', '=1')),
                    'limit' => '0,10'
                )
        );
        $view->set('tjList', $tjList);

        $view->set('DataInfo', $Obj);
        $view->renderWebHtml($view);
    }

}

?>