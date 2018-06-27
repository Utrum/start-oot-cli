# How to start OOT daemon

1. Install docker: https://docs.docker.com/install/linux/docker-ce/ubuntu/
2. Modify `assetchain-start.sh` with custom rpc user and password
3. Run it: `bash assetchain-start.sh`


#### Eliminating change addresses
Change addresses use to be a problem. But if you're gonna use only 1 address per daemon, then there's a solution.

You need to know your pubkey, and include a variable in `assetchain-start.sh`: `PUBKEY=<your_pubkey>`, then start your daemon, and import your private key (wif format) like this:

```
docker exec -ti OOT komodo-cli -ac_name=OOT -rpcuser=<user> -rpcpassword=<password> importprivkey <privkey>
```
