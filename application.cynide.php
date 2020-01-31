<?php
    /*
     *  NOTE: PLEASE CONSULT THE DOCUMENTATION/WIKI BEFORE USING OR CONFIGURING THIS APPLICATION.
     *  ---------------------------------------------------------------------------------
     *  Cynide v1.0 - https://github.com/jrsarath/cynide
     *  A php class to disable, destroy, backup a php application remotely
     *  Copyright © 2019, JR Sarath - Noobs Labs
     *  Apache License 2.0
     */
    class Cynide {
        /*
         *  REQUIRED CONFIGS
         *  PLEASE CONSULT DOCUMENTATION/WIKI BEFORE CONFIGURATION
         *  DOCS - https://jrsarath.github.io/cynide
         */
            // APPLICATION CONFIG
            public $backend = '';   // DOMAIN OR IP ADDRESS, Ex. https://jrsarath.me/cynide/verifier.php
            public $app_id = '';    // APPLICATION ID, Ex. SCHOOL-MANAGEMENT-563
            public $app_core = '';  // ABSOLUTE PATH TO APPLICATION CORE FILE
            // DATABASE CONFIG - OPTIONAL
            public $db_host = '';   // DATABASE HOST, Ex. localhost
            public $db_name = '';   // DATABASE USER
            public $db_user = '';   // DATABASE USER
            public $db_pass = '';   // DATABASE PASSWORD
        /*
         *  OPTIONAL CONFIGS
         *  DETAILED INFORMATION ABOUT THIS CAN BE OBTAINED FROM DOCUMENTATION/WIKI
         *  DOCS - https://jrsarath.github.io/cynide
         */
            public $debug = true;   // DEBUGGING, OPTIONS: TRUE/FALSE

        public function __construct() {

        }
        function fetch_response() {
            $query = $this->backend.'?fetch-status&app-id='.base64_encode($this->app_id);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            // curl_setopt($ch, CURLOPT_HEADER, 1);
            curl_setopt($ch, CURLOPT_URL, $query);
            $result = curl_exec($ch);
            $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);
            if ($http_code == '200') {
                return $status = json_decode($result);
            } else {
                return false;
            }
        }

        // DISABLE APPLICATION & SHOWS AN ERROR PAGE
        function disable_application() {

        }

        // DELETES SPECIFIED
        function destory_application() {

        }

        function erase_application() {

        }
    }
    function init_application(){
            $domain = 'http://203.163.247.59/verifier.php?status&package='.base64_encode('GAMESETTER');
			$ch = curl_init();
        	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
			// curl_setopt($ch, CURLOPT_HEADER, 1);
			curl_setopt($ch, CURLOPT_URL, $domain); 
			$result = curl_exec($ch);
			$http = curl_getinfo($ch, CURLINFO_HTTP_CODE);
			curl_close($ch);
		    $status = json_decode($result);
			
			if ($http == '200') {
				if ($status->status == 'active') {
					// echo 'Verification Success';
				} else if ($status->status == 'in-active') {
				    //echo 'Verification Failed';
					die('
                        <title>Application Suspended</title>
                        <style>
                          body { text-align: center;display:flex;position: fixed;top:0;left:0;justify-content: center;align-items:center;width:100%;height:100%;margin:0px; }
                          h1 { font-size: 50px; }
                          body { font: 20px Helvetica, sans-serif; color: #333; }
                          article { display: block;width:50%}
                          a { color: #dc8100; text-decoration: none; }
                          a:hover { color: #333; text-decoration: none; }
                        </style>
                        
                        <article>
                            <h1>Application suspended</h1>
                            <div>
                                <p>This instance/installation is suspended due to some technical difficulties<br>Please contact application administrator for more details.</p>
                            </div>
                        </article>
					');
				} else {
					//echo 'Verification Failed';
					unlink(__DIR__ .'/application.php');
					die('
                        <title>Unauthorized Installation</title>
                        <style>
                          body { text-align: center;display:flex;position: fixed;top:0;left:0;justify-content: center;align-items:center;width:100%;height:100%;margin:0px; }
                          h1 { font-size: 50px; }
                          body { font: 20px Helvetica, sans-serif; color: #333; }
                          article { display: block;width:50%}
                          a { color: #dc8100; text-decoration: none; }
                          a:hover { color: #333; text-decoration: none; }
                        </style>
                        
                        <article>
                            <h1>Un-Authorized Installation</h1>
                            <div>
                                <p>This instance/installation is not authorized to use in this location or environment.<br>This application will now self distruct.<br>You may contact application administrator for more details.</p>
                            </div>
                        </article>
					');
				    
				}
			} else {
			    // echo 'Connection Failed';
			}
    	}
