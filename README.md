# Floccus-WebDavDocker
Local WebDAV server to Floccus plugin browse. Dockerized version for GNU/Linux (with autentication).

Inspired by [TCB13/LoFloccus](https://github.com/TCB13/LoFloccus) ('Sync Floccus' browser bookmarks to a local folder / any cloud).

# Features

- Accepts WebDAV connections from localhost;
- Restrict Floccus access to a single directory;
- Set username and password for Floccus credentials;
- Only works with .XBEL files;
- Share the folder on any public or private cloud service (dropbox, drive, rsync, synthing, seafile, etc.);

# Install from source

## 1. Download with git
```
$ git clone https://github.com/marlluslustosa/Floccus-WebDavDocker
$ cd Floccus-WebDavDocker
```

## 2. Build with docker
```
$ sudo docker build -t floccuswebdav:latest .
```

## 3. Run
```
$ sudo docker run -itd --name floccuswebdav -e USER="user" -e PASS="pass" -v $PWD/bookmarks/:/var/floccuswebdav/bookmarks/ -p 8083:8081 --restart=always floccuswebdav:latest
```


# Install with 'one command'
## 1. Download and build and run image docker (Docker Hub Repository)
```
sudo docker run -itd --name floccuswebdav -e USER="user" -e PASS="pass" -v "$PWD"/bookmarks/:/var/floccuswebdav/bookmarks/ -p 8083:8081 --restart=always marlluslustosa/floccuswebdav
```


# Comments

 * Edit 'user' and 'pass' (Floccus navigator plugin credentials).

 * "$PWD"/bookmarks = is the folder where you want to save the bookmark file. It can be a folder inside a dropbox repository, google drive, syncthing, rsync, etc.

 * When pointing the browser extension to your newly created local webdav, add the user and pass credentials defined in the docker run command along with the address 127.0.0.1:8083.
 
 * --restart=always = restart container if reboot machine.
 
 # Credits
* https://github.com/TCB13/LoFloccus
* https://github.com/mar10/wsgidav
* https://github.com/marcelklehr/floccus

# License

* GNU GENERAL PUBLIC LICENSE (GPL Version 3) [see more](LICENSE).
