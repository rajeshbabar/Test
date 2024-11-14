https://karan9192.signin.aws.amazon.com/console
rajesh
Devops!123

SERVICE1 [ Give your dockerhub ID in place of
rajeshbabars1998 ]

cd shopfront/
mvn clean install -DskipTests
docker build -t rajeshbabars1998/shopfront:latest .
docker push rajeshbabars1998/shopfront:latest
cd ..
cd productcatalogue/
mvn clean install -DskipTests
docker build -t rajeshbabars1998/productcatalogue:latest .
docker push rajeshbabars1998/productcatalogue:latest
cd ..
cd stockmanager/
mvn clean install -DskipTests
docker build -t rajeshbabars1998/stockmanager:latest .
docker push rajeshbabars1998/stockmanager:latest

https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.6.3/apache-maven-3.6.3-bin.tar.gz

wget https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.6.3/apache-maven-3.6.3-bin.tar.gz



# Step 1: Create a 10 GB swap file
sudo fallocate -l 10G /swapfile

# If fallocate is not available, use the following instead:
# sudo dd if=/dev/zero of=/swapfile bs=1M count=10240

# Step 2: Set correct permissions
sudo chmod 600 /swapfile

# Step 3: Set up the swap file
sudo mkswap /swapfile

# Step 4: Enable the swap file
sudo swapon /swapfile

# Step 5: Make the swap file permanent (so it persists across reboots)
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Step 6: Verify the swap space
swapon --show

# Or check memory and swap usage
free -h


docker pull docker.bintray.io/jfrog/artifactory-oss:7.55.10

docker run --name artifactory -d -p 8081:8081 -p 8082:8082 -v /jfrog/artifactory:/var/opt/jfrog/artifactory docker.bintray.io/jfrog/artifactory-oss:7.55.10
