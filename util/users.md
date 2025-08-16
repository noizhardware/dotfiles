* **add a user** (do it as root)
     ~~~~
     useradd username
     passwd username
     ~~~~
here you're asked to(and you must!) set the pwd for the new user

* to **log in**: `su - username`
* to **delete** an user: `userdel username`
* make a **new group**: `groupadd groupName`
* **change** a users primary **group**: `usermod -g groupName userName`
* **check** what groups an user belongs to: `groups userName`
* to **logout** an user: `sudo pkill -KILL -u username`