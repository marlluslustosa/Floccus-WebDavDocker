# LoFloccus-Docker
LoFloccus (Local WebDAV server), dockerized version for GNU/Linux


# Install

## Download with git
```
$ git clone https://github.com/marlluslustosa/LoFloccus-Docker/
$ cd LoFloccus-Docker
```

## Build with docker
```
$ sudo docker build -t lofloccus:latest .
```

## Run
```
$ sudo docker run -itd --name lofloccus -e USER="user" -e PASS="pass" -v $PWD/bookmarks/:/var/lofloccus/bookmarks/ -p 8083:8081 --restart=always lofloccus:latest
```



### Comments

$PWD/bookmarks = is the folder where you want to save the bookmark file. It can be a folder inside a dropbox repository, google drive, syncthing, rsync, etc.

When pointing the browser extension to your newly created local webdav, add the user and pass credentials defined in the docker run command along with the address 127.0.0.1:8083.
