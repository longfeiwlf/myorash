@echo off
set listener_log_dir=C:\app\oracle\product\12.2.0\dbhome_1\log\diag\tnslsnr\DATA\listener\trace\
echo.
echo.
echo.
echo.
echo ==================================================================================================================================== 
REM  set your own oracle database listener log directory   
echo set oracle database listener log directory:C:\app\oracle\product\12.2.0\dbhome_1\log\diag\tnslsnr\DATA\listener\trace\ 
echo.                     
echo.                        
echo %DATE%%TIME%                    
echo  stop oracle listener logging   
lsnrctl set log_status off

echo.                     
echo.                     
echo.                     
echo.                     
echo %DATE%%TIME%                     
echo show oracle listener log status  
lsnrctl show log_status               

echo.                     
echo.                     
echo.                     
echo.                     
echo %DATE%%TIME%                     
echo purge listener log......        
copy /y %listener_log_dir%empty.txt %listener_log_dir%listener.log


echo.                     
echo.                     
echo.                     
echo.                     
echo %DATE%%TIME%                     
echo start oracle listener logging     
lsnrctl set log_status on

echo.                     
echo.                     
echo.                     
echo.                     
echo %DATE%%TIME%                     
echo show oracle listener log status 
lsnrctl show log_status              
