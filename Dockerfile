# Starting point - Official image with OpenJRE 8
FROM java:8-jre

MAINTAINER Lunran <feitcounter@gmail.com>

WORKDIR /spigot

# Accept Mojang EULA
RUN echo "eula=TRUE" > eula.txt

# Silence harmless but scary sounding errors
RUN echo "[]" > banned-ips.json
RUN echo "[]" > banned-players.json
RUN echo "[]" > ops.json
RUN echo "[]" > usercache.json
RUN echo "[]" > whitelist.json

ADD server.properties /spigot/

# Download Spigot
RUN wget http://tcpr.ca/files/spigot/spigot-1.7.9-R0.2-SNAPSHOT.jar

# Download Rapsberry Juice
RUN wget -P plugins https://github.com/zhuowei/RaspberryJuice/raw/master/jars/raspberryjuice-1.5.jar

# Open port for picraft and mcpi
EXPOSE 4711
# Open port for Minecraft
EXPOSE 25565

# Run Spigot server
CMD java -Xmx1024M -Xms1024M -jar /spigot/spigot-1.7.9-R0.2-SNAPSHOT.jar
