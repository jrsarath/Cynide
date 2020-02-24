<?php
    $apps_status_list = Array(
        "cynide" =>
            [
                'status' => 'active',
                'license_key' => 'CGKP1DPSI2EPZO1'
            ],

    );
    if (isset($_GET['fetch-status'])) {
        if (isset($_GET['app-id'])){
            $app = base64_decode($_GET["app-id"]);
            header('Content-Type: application/json');
            echo json_encode(Array('status' => $apps_status_list[$app]));
        } else {
            header('HTTP/1.0 403 Forbidden');
        }
    } else {
        header('HTTP/1.0 403 Forbidden');
    }