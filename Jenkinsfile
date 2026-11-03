pipeline {
    agent any

    environment {
        IMAGE_NAME = "java-hello-app"
        CONTAINER_NAME = "java-hello-run"
    }

    stages {
        stage('Docker Build') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }

        stage('Docker Run & Verify') {
            steps {
                sh "docker rm -f ${CONTAINER_NAME} || true"
                sh "docker run --name ${CONTAINER_NAME} ${IMAGE_NAME}:latest"
            }
        }
    }
    
    post {
        always {
            sh "docker rm -f ${CONTAINER_NAME} || true"
        }
    }
}

