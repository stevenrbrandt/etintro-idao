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

# push to dockerhub

```
sudo docker push einsteintoolkit/et2022uidaho-tutorial
```

# update server

Send email to sbrandt@cct.lsu.edu
