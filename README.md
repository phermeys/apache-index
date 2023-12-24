# apache-index
Template for docs.theregion.beer

On my main web/docker host, I have mapped \\saturn\behemoth to /media/behemoth for eridani style web hosts

The doc.theregion.beer site was originally configured on eridani by pointing to a file in a virtual host in apache

Now, I have it kinda dockerized as long as the host has the path already

After cloning to a new directory, might need to customize some paths

Just clone, update .env.template and move to .env, and docker-compose up -d --build
