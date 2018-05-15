FROM openjdk:8
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN javac ./*.java
CMD "java" "$MAIN_CLASS"