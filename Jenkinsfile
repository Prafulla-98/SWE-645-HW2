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
                    sh 'ls'
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
                sh "kubectl set image deployment/deployment container-0=prafulladevi/swe645-project2:${BUILD_TIMESTAMP} -n namespace645"
            }
        }
        
    }
}
