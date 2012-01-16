@IF NOT EXIST server\target\server-2.8-SNAPSHOT.jar (
    @CALL mvn clean package
)
set CLASSPATH=server\target\server-2.8-SNAPSHOT.jar
@START /MIN rmiregistry
@java simpledb.server.Startup %1
@ECHO Killing the rmiregistry...
@taskkill /t /f /im rmiregistry.exe