 #!/bin/bash
mkdir -p report
rm -r report || true

docker-compose up -d xvfb
sleep 10

docker-compose up robotframework

#docker run -v test-suite:/suite robot_framework
docker-compose down