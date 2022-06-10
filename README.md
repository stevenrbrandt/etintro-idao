# build the containers

First the base image that contains the code and simulation tar file.

```
sudo docker-compose -f docker-compose.base.yml build
```

Next the image containing the tutorial notebooks

```
sudo docker-compose -f docker-compose.notebook.yml build
```

Finally the tutorial container image:

```
sudo docker-compose -f docker-compose.yml build
```

# locally test

```
sudo docker-compose run -v home_nbfs:/nfs/home/root  perimeter-workspace
```

Then get ip address from `docker ps` and `docker inspect XXX`.

# push to dockerhub

```
for c in .base .notebook ''; do
  sudo docker-compose -f docker-compose$c.yml push
done
```

# update server

Send email to sbrandt@cct.lsu.edu
