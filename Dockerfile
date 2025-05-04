FROM openjdk:21

EXPOSE 8080
COPY target/git_action_test_lab.jar git_action_test_lab.jar
ENTRYPOINT ["java","-jar","/git_action_test_lab.jar"]
