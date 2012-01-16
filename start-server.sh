if [ ! -e "server/target/server-2.8-SNAPSHOT.jar" ]
then
  mvn clean package
fi
CLASSPATH=server/target/server-2.8-SNAPSHOT.jar rmiregistry &
java -cp server/target/server-2.8-SNAPSHOT.jar simpledb.server.Startup $1