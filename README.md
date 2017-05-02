### Setup

```bash
# connect to docker machine
docker-machine start default
eval "$(docker-machine env default)"

# start swarm
docker swarm init --advertise-addr 192.168.99.100

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
