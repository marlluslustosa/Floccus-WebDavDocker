# LoFloccus-Docker
LoFloccus (Local WebDAV server). Dockerized version for GNU/Linux (with autentication).

GNU/Linux client of [TCB13/LoFloccus](https://github.com/TCB13/LoFloccus) ('Sync Floccus' browser bookmarks to a local folder / any cloud). 

# Install from source

## 1. Download with git
```
$ git clone https://github.com/marlluslustosa/LoFloccus-Docker/
$ cd LoFloccus-Docker
```

## 2. Build with docker
```
$ sudo docker build -t lofloccus:latest .
```

## 3. Run
```
$ sudo docker run -itd --name lofloccus -e USER="user" -e PASS="pass" -v $PWD/bookmarks/:/var/lofloccus/bookmarks/ -p 8083:8081 --restart=always lofloccus:latest
```


# Install with 'one command'
## 1. Download and build and run image docker (Docker Hub Repository)
```
sudo docker run -itd --name lofloccus -e USER="user" -e PASS="pass" -v "$PWD"/bookmarks/:/var/lofloccus/bookmarks/ -p 8083:8081 --restart=always marlluslustosa/lofloccus
```


# Comments

 * Edit 'user' and 'pass' (LoFloccus navigator plugin credentials).

 * "$PWD"/bookmarks = is the folder where you want to save the bookmark file. It can be a folder inside a dropbox repository, google drive, syncthing, rsync, etc.

 * When pointing the browser extension to your newly created local webdav, add the user and pass credentials defined in the docker run command along with the address 127.0.0.1:8083.
 
 * --restart=always = restart container if reboot machine.
 
 # Credits
* https://github.com/TCB13/LoFloccus
* https://github.com/mar10/wsgidav
* https://github.com/marcelklehr/floccus

# License

* GNU GENERAL PUBLIC LICENSE (GPL Version 3)
