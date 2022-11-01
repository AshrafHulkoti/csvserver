### **Part-1 Commands:**

1. `docker run -it -d infracloudio/csvserver:latest`
2. The above command fails because there is no such file `/csvserver/inputdata`
3. Run `bash gencsv.sh` to generate 10 entries by default. To generate with specified number of entries, run with `bash gencsv.sh 100000`
4. `docker run -it -d -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest`
5. `docker ps` to find the port on which the internal service is running on. i.e., **9300/tcp**
6. `docker run -it -d -p 9393:9300 --env CSVSERVER_BORDER=Orange -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest`
