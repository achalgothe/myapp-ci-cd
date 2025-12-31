pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }

        stage('Unit Test') {
            steps {
                echo 'Testing...'
            }
        }

        stage('Code Quality Scan') {
            steps {
                echo 'SonarQube Scan...'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Docker image build...'
            }
        }

        stage('Push to ECR') {
            steps {
                echo 'Pushing image to ECR...'
            }
        }

        stage('Approval') {
            steps {
                input message: 'Deploy to Production?'
            }
        }

        stage('Deploy to ECS') {
            steps {
                echo 'Deploying to ECS...'
            }
        }
    }
}
