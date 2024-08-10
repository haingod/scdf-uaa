./$1/setup.sh
curl -L -O https://repo.maven.apache.org/maven2/org/springframework/cloud/spring-cloud-dataflow-server/2.11.4/spring-cloud-dataflow-server-2.11.4.jar
java -jar spring-cloud-dataflow-server-2.11.4.jar --spring.config.additional-location=$1/dataflow.yml