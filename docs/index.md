# Cynide - The Failsafe
a PHP class to backup, disable, destroy, or completely erase PHP applications remotely in special cases.

Work in progress - Please check back in while for updates, Cheers!!
### Goals
1. **Backup Application Remotely**, In-case developer lost control to original host for backup
2. **Disable Application**, In-case of an emergency developer needs to disable to application with out harming files/database.
3. **Destroy Application**, In-case developer needs destroy/delete certain file inside application, including cynide.
4. **Erase**, In-case developer needs to erase/delete all application data including database. this function will also transfer a shadow-copy of the main application along with database to configured server (optional).

Other feature ideas, or improvement ideas are most welcome, please feel free to leave them **[here](https://github.com/jrsarath/Cynide/issues/new)** section along with correct tag.
### Requirements
1. A webserver with php support, shared hostings works as-well.
2. Little bit of php knowledge, if you feel unsure about any config/settings feel free to ask [here](https://github.com/jrsarath/Cynide/issues/new) with tag ***help wanted*** 
### Getting Started
1.  Download Cynide, and upload cynide.php inside ur application, server.cynide.php to your own server/website

2.  Include Cynide library where you want to initiate Cynide
    ```php
        require('path-to-cynide/cynide.php');
    ```
3.  Be creative, Cynide is self executable, just initiate it once, call initiation inside your main application or anywhere else.
    ```php
        $cynide = new Cynide();
    ```
    thats it. cynide is now initiated and will work as configured. Now you also can manually call Cynide's functions using cynide class, Ex. ```$cynide->validate_license()``` or ```$cynide->remote_backup()```

### Configuration
Cynide's configurations are fairly simple and easy. still ig you get stuck somewhere or unsure about any config/settings feel free to ask for [help here](https://github.com/jrsarath/Cynide/issues/new)

If you take a look into cynide.php you'll see some configurations to be configured, below you can find each configs description, purpose, example value. cynide.php also has a little helping text above each configs to help you along.

1. ***$backend***
    ```php
    // REQUIRED CONFIG
    // Here you have to define your backend's website address or ip address
    // with http:// or https:// where cynides server file is located
    // Ex. http://jrsarath.me/cynide/ or http://192.168.1.50/
    public $backend = '';
    ```
2.  ***$app_id***
    ```php
    // REQUIRED CONFIG
    // Here you have to define your application id which will identify and 
    // verify this application with cynide server end. Remember to give each 
    // application installation a unique application id
    // Ex. 'CRM-563' or 'HTM-50'
    public $app_id = '';
    ```
3.  ***$app_core***
    ```php
    // REQUIRED CONFIG
    // Here you have to define absolute path to an important core/functions.php file// 
    // of your application which you want to get deleted when you call Cynide's remote destroy function
    // Ex. '/home/jrsarath/public_html/management/application/application.php' or 'application.php'
    public $app_core = '';        
    ```
4.  ***Database Configs***
    ```php
    // Define your database server's domain or ip address
    // Ex. 'localhost'
    // Default value: 'localhost'
    public $db_host = '';
    
    // Define your database's name
    // Ex. 'jrs_manage'
    public $db_name = '';
        
    // Define your database's username
    // Ex. 'dbuser_152'
    public $db_user = '';
        
    // Define your database's password
    // Ex. '856s7aXAsd'
    public $db_pass = '';
    ```
### API
Cynide's api usage and description
1.  
### Support
Cynide was developed by a developer for developers, so i'll try my best to support each one of the users, feel free to ask for [support here](https://github.com/jrsarath/Cynide/issues/new). Please include a correct tag with the issue

It would be great to get an cup of coffee :coffee: in return, if you found this project useful please consider donating a small amount [here](https://www.instamojo.com/@jrsarath), thanks
### Disclaimer
Cynide neither was developed for malicious usage or was intended to use for malicious usage. Cynide is "**failsafe**" or a "**killswitch**" to prevent fraudulent activities against freelance developers.

Made with :heart: in Kolkata