FROM tomcat:9-jdk17
COPY target/fiveguys.war /usr/local/tomcat/webapps/guys.war
COPY src/main/resources/configs/Wallet_ZZ9A48VC6RQ8TZ7M /Wallet_ZZ9A48VC6RQ8TZ7M