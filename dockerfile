FROM openjdk:13-jdk-alpine 
VOLUME /tmp 
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY UnlimitedJCEPolicyJDK8/* /c/Users/naray/Java/jdk-13.0.2/lib/security/
COPY target/PhotoAppAPIConfigServer-0.0.1-SNAPSHOT.jar ConfigServer.jar 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"]