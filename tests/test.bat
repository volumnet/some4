CHCP 65001 
SET XDEBUG_CONFIG="idekey=session_name" 
SET "COMPOSER_PROCESS_TIMEOUT=3600" 
"../vendor/bin/phpunit" --testsuite %1