SET target_user=""
SET target_ip=""
SET target_dir="/home/user/dirname"
SET local_file_to_transfer="R:/dir/dir/file.extension"

scp %local_file_to_transfer% %target_user%@%target_ip%:%target_dir%

REM ,,ssh
REM ,,filetransfer
REM ,,coding
REM ,,linux
REM ,,bash

REM to copy a folder FROM remote to local:
scp -r remote_username@remote_machine_ip:/remote/folder R:/local/folder

REM to copy a file from local TO remote
scp R:/test.txt pi@62.11.161.98:/home/pi/test.txt