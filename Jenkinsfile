
pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Build stage running'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }
    }
}
