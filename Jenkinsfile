
pipeline {
  agent any

  options {
    timeout(time: 40, unit: 'MINUTES')
  }

  environment {
    AWS_REGION = "ap-south-1"
    ECR_REPO = "myapp"
    IMAGE_TAG = "${BUILD_NUMBER}"
  }

  stages {

    stage('Checkout') {
      steps {
        git branch: 'main',
            url: 'https://github.com/your-repo.git'
      }
    }

    stage('Build') {
      steps {
        sh 'echo "Building application"'
      }
    }

    stage('Unit Test') {
      steps {
        sh 'echo "Running tests"'
      }
    }

    stage('Code Quality Scan') {
      steps {
        sh 'echo "SonarQube scan here"'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t myapp:${BUILD_NUMBER} .'
      }
    }

    stage('Push to ECR') {
      steps {
        sh 'echo "Pushing image to ECR"'
      }
    }

    stage('Approval') {
      steps {
        input message: 'Deploy to Production?', ok: 'Deploy'
      }
    }

    stage('Deploy to ECS') {
      steps {
        sh 'echo "Deploying to ECS"'
      }
    }
  }
}
