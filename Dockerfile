FROM openjdk:21

WORKDIR /code
EXPOSE 8080
COPY target/git_action_test_lab.jar git_action_test_lab.jar
ENTRYPOINT ["java","-jar","/git_action_test_lab.jar"]
