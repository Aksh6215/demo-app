pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull the latest code from GitHub
                git 'https://github.com/Aksh6215/demo-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('demo-app-image')
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        docker.image('demo-app-image').push()
                    }
                }
            }
        }
    }
}
