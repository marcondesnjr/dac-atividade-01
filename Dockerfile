FROM openjdk:8
ADD /src /home/app/src
WORKDIR ./home/app
RUN mkdir ./class && javac -d ./class ./src/*.java
CMD "java" "-cp" "./class" "$MAIN_CLASS"