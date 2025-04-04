@echo off
echo Downloading dependencies for Weather REST API Client...

mkdir lib 2>nul

echo Downloading Jackson libraries...
curl -L -o lib/jackson-databind-2.14.2.jar https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.14.2/jackson-databind-2.14.2.jar
curl -L -o lib/jackson-core-2.14.2.jar https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.14.2/jackson-core-2.14.2.jar
curl -L -o lib/jackson-annotations-2.14.2.jar https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.14.2/jackson-annotations-2.14.2.jar

echo Downloading Apache HttpClient libraries...
curl -L -o lib/httpclient5-5.2.1.jar https://repo1.maven.org/maven2/org/apache/httpcomponents/client5/httpclient5/5.2.1/httpclient5-5.2.1.jar
curl -L -o lib/httpcore5-5.2.1.jar https://repo1.maven.org/maven2/org/apache/httpcomponents/core5/httpcore5/5.2.1/httpcore5-5.2.1.jar
curl -L -o lib/httpcore5-h2-5.2.1.jar https://repo1.maven.org/maven2/org/apache/httpcomponents/core5/httpcore5-h2/5.2.1/httpcore5-h2-5.2.1.jar

echo Downloading SLF4J API...
curl -L -o lib/slf4j-api-1.7.36.jar https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.36/slf4j-api-1.7.36.jar
curl -L -o lib/slf4j-simple-1.7.36.jar https://repo1.maven.org/maven2/org/slf4j/slf4j-simple/1.7.36/slf4j-simple-1.7.36.jar

echo Downloading Commons Logging...
curl -L -o lib/commons-logging-1.2.jar https://repo1.maven.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar

echo Dependencies downloaded successfully!
echo.
echo Now create a 'bin' directory and compile the application:
echo mkdir bin
echo javac -cp "lib/*" -d bin src/main/java/com/codtech/weatherapp/model/*.java src/main/java/com/codtech/weatherapp/config/*.java src/main/java/com/codtech/weatherapp/service/*.java src/main/java/com/codtech/weatherapp/*.java
echo.
echo To run the application:
echo java -cp "bin;lib/*" com.codtech.weatherapp.WeatherApp 