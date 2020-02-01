<?php
    /*
     *  NOTE: PLEASE CONSULT THE DOCUMENTATION/WIKI BEFORE USING OR CONFIGURING THIS APPLICATION.
     *  ---------------------------------------------------------------------------------
     *  Cynide v1.0 - https://github.com/jrsarath/cynide
     *  A php class to backup, disable, destroy, erase a php application remotely
     *  Copyright © 2019, JR Sarath - Noobs Labs
     *  Apache License 2.0
     */
    class Cynide {
        /*
         *  APPLICATION CONFIGURATION
         *  PLEASE CONSULT DOCUMENTATION/WIKI BEFORE CONFIGURATION
         *  DOCS - https://jrsarath.github.io/cynide
         */
            // --------------------------------------
            // APPLICATION CONFIGS
            // --------------------------------------
            // DOMAIN OR IP ADDRESS, Ex. https://jrsarath.me/cynide/verifier.php
            public $backend = 'http://localhost:8080/server.cynide.php';
            // APPLICATION ID, Ex. SCHOOL-MANAGEMENT-563
            public $app_id = 'cynide';
            // ABSOLUTE PATH TO APPLICATION CORE FILE
            public $app_core = 'test.core.php';
            //  --------------------------------------
            // DATABASE CONFIG - OPTIONAL
            // --------------------------------------
            // DATABASE HOST, Ex. localhost
            public $db_host = 'localhost';
            // DATABASE NAME
            public $db_name = 'aio';
            // DATABASE USER
            public $db_user = 'global';
            // DATABASE PASSWORD
            public $db_pass = 'global';
            // --------------------------------------
            // OTHER CONFIGS - OPTIONAL
            // --------------------------------------
            // DEBUGGING, OPTIONS: TRUE/FALSE
            public $debug = true;

        public function __construct() {
            if ($db = mysqli_connect($this->db_host, $this->db_user, $this->db_pass, $this->db_name)) {
                $this->database = $db;
            } else {
                $this->write_log('ERROR', '[SQL ERROR] - '.mysqli_connect_error());
            }
            // INITIATE CYNIDE
            $this->validate_authenticity();
        }

        function validate_authenticity() {
            $q = mysqli_fetch_assoc(mysqli_query($this->database,"SELECT * FROM options WHERE option_id='3'"));
            echo($q['option_name']);
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

        function validate_license() {

        }
        // DISABLE APPLICATION & SHOWS AN ERROR PAGE
        function disable_application() {

        }

        // DELETES SPECIFIED
        function destory_application() {

        }

        function erase_application() {

        }
        function write_log($type, $msg) {
            $this->debug && error_log('['.$type.'] Cynide : '.$msg);
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
