SET target_user=""
SET target_ip=""
SET target_dir="/home/user/dirname"
SET local_file_to_transfer="R:/Work/electronics/aerocene/raspi/home-pi/aerocene/server.js"

scp %local_file_to_transfer% %target_user"@%target_ip%:%target_dir%

REM ,,ssh
REM ,,filetransfer
REM ,,coding
REM ,,linux
REM ,,bash