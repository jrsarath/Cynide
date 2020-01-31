<?php

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
           
		init_application();
