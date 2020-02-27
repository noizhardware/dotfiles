as root:
useradd username
passwd username
>>here you can set the pwd for the new user


to log in: su - username

to delete an user:
userdel username


make a new group:
groupadd groupName

change a users primary group:
usermod -g groupName userName

check what groups an user bekongs to:
groups userName