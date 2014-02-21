<?php

/**
 * 核心Controller
 * @author:Laven<190296465@vip.qq.com>
 * @copyright:Copyright 2009 Laven
 * @create:2010-11-13
 * @modify:2014-01-03
 */
class Action {

    function __construct() {
        ;
    }

    function error($error_id) {
        switch ($error_id) {
            case 404:
                header('Location:/error.html');
                break;
            default:
                echo 'error' . $error_id;
                break;
        };
    }

    function __destruct() {
        ;
    }

}

?>