pipeline {
    agent any
    environment {
        DOCKERHUB_PASS = credentials('docker-pass')
    }
    stages {
        stage("Building the Student Survey Image") {
            steps {
                script {
                    checkout scm
                    sh "cd src/main/webapp && jar -cvf SWE-645-HW1.war *"
                    DATE_TAG = java.time.LocalDate.now()
                    DATETIME_TAG = java.time.LocalDateTime.now()
                    sh "echo ${DATETIME_TAG}"
                    sh "sudo docker login -u prafulladevi -p ${DOCKERHUB_PASS}"
                    sh "sudo docker build -t prafulladevi/swe645-project2:${BUILD_TIMESTAMP} ."
                }
            }
        }
        stage("Pushing Image to DockerHub") {
            steps {
                script {
                    sh "sudo docker push prafulladevi/swe645-project2:${BUILD_TIMESTAMP}"
                }
            }
        }
        stage("Deploying to Rancher as a single pod") {
            steps {
                sh "kubectl set image deployment/swe-hw2-pipeline swe-hw2-pipeline=prafulladevi/swe645-project2:${BUILD_TIMESTAMP} -n jenkins-pipeline"
            }
        }
        stage("Deploying to Rancher as with load balancer") {
            steps {
                sh "kubectl set image deployment/swe-hw2-lb swe-hw2-lb=prafulladevi/swe645-project2:${BUILD_TIMESTAMP} -n jenkins-pipeline"
            }
        }
    }
}
