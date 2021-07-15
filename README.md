# spidercon - SpiderOakONE console
Docker container for CLI management of a SpiderOakONE backup account

### Data Directory
The local directory `./data` is bind-mounted into the container as `/home/spidercon`

### Install and build container
```
git clone git@github.com:rstms/spidercon
cd spidercon
make build
```

### Start a shell to use SpiderOakONE cli
```
make run
```

### Initial Configuration for a SpiderOakONE account

The file `./.env` file is used to pass docker credentials into the container
#### `.env`
```
SPIDEROAK_USERNAME=spideroak_user@domain.com
SPIDEROAK_PASSWORD=YOUR_SPIDEROAK_ACCOUNT_PASSWORD
```
- Initialization command: `SpiderOakONE --setup=config.json` 
- The bash startup script writes `config.json` with these credentials.
- SpiderOakONE says: `(this may take a long time)` 
- For one account, this took over 7 hours and used >18GB for the local management database
