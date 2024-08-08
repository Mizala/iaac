## TO deploy all
1. Clone all frontend and backend the repo in one directory
2. clone this repo in the same directory
3. run ./restart-all .


## To deploy on component
1. go into component dir b doing `cd services/{component}`
2. do a `git pull`
3. go to `cd ~/services/iaac/{component}`
4. run `dc build` to build the latest
5. run `dc up -d` to restart
