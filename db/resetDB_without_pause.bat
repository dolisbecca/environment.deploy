call setEnv.bat
mysql -uroot -proot -e "drop database if exists %DB_NAME%"

mysql -uroot -proot -e "create database %DB_NAME% DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci"
call mvn package
call mvn dbdeploy:update