Basic swarm setup with nginx and a web server. Nginx acts as an ingress node for the other web servers. The request is then round-robin load balanced by docker swarm to *n* internal web servers. Visualizer setup on port 8080 to see containers scaling in action.

### Local setup

```bash
docker-machine create --driver virtualbox swarm-demo-manager
```

### DO Setup
```bash
export DOTOKEN=xxxxx # get from DO

docker-machine create \
  --driver digitalocean \
  --digitalocean-access-token $DOTOKEN \
  swarm-demo-manager
```

### Deploy
```bash
# connect to swarm manager
eval "$(docker-machine env swarm-demo-manager)"
# start swarm
docker swarm init --advertise-addr $(docker-machine ip swarm-demo-manager)
# deploy stack
docker stack deploy --compose-file docker-compose-production.yml swarm_demo
```

### Useful commands
```bash
docker-machine ls # see docker machines
docker node ls # see nodes in swarm
docker stack ls # see stacks in swarm

docker stack services ${STACK_NAME} # see services in a stack
docker stack rm ${STACK_NAME} # remove a stack

docker swarm join-token worker # get a worker join token

docker service scale ${NAME}=${REPLICAS}
```

### Adding docker nodes
```bash
# create worker node
docker-machine create --driver virtualbox

# get join-token from manager
docker swarm join \
    --token ${JOIN_TOKEN} \
    192.168.99.100:2377
```
