FROM openjdk
ADD /src /usr/src/myapp/src
WORKDIR ./usr/src/myapp
RUN mkdir ./class && javac -d ./class ./src/*.java
CMD "java" "-cp" "./class" "$MAIN_CLASS"