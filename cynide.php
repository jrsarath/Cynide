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
        // --------------------------------------
        // APPLICATION CONFIGS
        // PLEASE CONSULT DOCUMENTATION/WIKI BEFORE CONFIGURATION
        // DOCS - https://jrsarath.github.io/cynide
        // --------------------------------------

        // DOMAIN OR IP ADDRESS OF CYNIDE'S SERVER FILE, Ex. https://jrsarath.me/cynide/
        public $backend = 'http://localhost/cynide/';
        // APPLICATION ID, Ex. SCHOOL-MANAGEMENT-563
        public $app_id = 'cynide';
        // VERIFY APPLICATION LICENSE, OPTIONS: TRUE/FALSE
        public $verify_license = false;
        // APPLICATION'S LICENSE KEY (OPTIONAL)
        public $app_license_key = '';
        // ABSOLUTE PATH TO APPLICATION CORE FILE
        public $app_core = 'test.core.php';
        //  --------------------------------------
        // DATABASE CONFIG - OPTIONAL
        // --------------------------------------
        // DATABASE HOST, Ex. localhost
        public $db_host = 'localhost';
        // DATABASE NAME
        public $db_name = 'cynide';
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
            $this->init();
        }
        // VALIDATION FUNCTIONS
        function init() {
            $query = $this->backend.'server.cynide.php?fetch-status&app-id='.base64_encode($this->app_id);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            // curl_setopt($ch, CURLOPT_HEADER, 1);
            curl_setopt($ch, CURLOPT_URL, $query);
            $result = curl_exec($ch);
            $http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);
            if ($http_code == '200') {
                $status = json_decode($result);
                var_dump($status);
            } else {
                return false;
            }
        }
        // CONTROL HELPERS
        function disable_application() {

        }
        function destory_application() {

        }
        function erase_application() {

        }
        // BACKUP HELPERS
        function remote_backup() {

        }
        function generate_chunks($file,$buffer=64){
            //open file to read
            $file_handle = fopen($file,'r');
            //get file size
            $file_size = filesize($file);
            //no of parts to split
            $parts = $file_size / $buffer;
            //store all the file names
            $file_parts = array();
            //path to write the final files
            $store_path = "cyn-temp/";
            //name of input file
            $file_name = basename($file);

            for($i=0;$i<$parts;$i++){
                //read buffer sized amount from file
                $file_part = fread($file_handle, $buffer);
                //the filename of the part
                $file_part_path = $store_path.$file_name.".part$i";
                //open the new file [create it] to write
                $file_new = fopen($file_part_path,'w+');
                //write the part of file
                fwrite($file_new, $file_part);
                //add the name of the file to part list [optional]
                array_push($file_parts, $file_part_path);
                //close the part file handle
                fclose($file_new);
            }
            //close the main file handle
            fclose($file_handle);
            return $file_parts;
        }
        function send_to_remote() {

        }
        function export_table($table) {
            if (!file_exists('tmp')) {
                mkdir('tmp');
                if (!file_exists('tmp/database')) {
                    mkdir('tmp/database');
                }
            }
            $file = 'tmp/database/'.$table.'.sql';
            // exec("mysqldump --user=$this->db_user --password='$this->db_pass' --host=$this->db_host $this->db_name > backup.sql");
            if (!mysqli_query($this->database,"SELECT * INTO OUTFILE '$file' FROM $table")) {
                $this->write_log('ERROR','[SQL ERROR] - '.mysqli_error($this->database));
            }
        }
        // HELPER FUNCTIONS
        function render($template) {
            die($template);
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
