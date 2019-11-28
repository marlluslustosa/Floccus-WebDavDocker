# LoFloccus-Docker
LoFloccus, dockerized version for GNU/Linux


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
$ sudo docker run -itd --name lofloccus -e USER="user" -e PASS="pass" -v $PWD/bookmarks/:/var/lofloccus/bookmarks/ -p 8083:8081 lofloccus:latest
```

### Comments

$PWD/bookmarks = is the folder where you want to save the bookmark file. It can be a folder inside a dropbox repository, google drive, syncthing, rsync, etc.
