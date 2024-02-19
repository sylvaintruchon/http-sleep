# http-sleep

# Pour construire
docker build --progress=plain --no-cache -t sylvaintruchon/http-sleep:v3 .

# Pour démarrer le container
docker run -d --name http-sleep -p8080:8080 sylvaintruchon/http-sleep:v3

# Pour entrer dans le container
docker exec -it http-sleep bash

# Pour faire un test de sleep
time curl localhost:8080/sleep60.php

time curl localhost:8080/sleep.php?seconds=10
