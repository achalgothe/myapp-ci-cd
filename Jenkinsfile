pipeline {
  agent any

  environment {
    AWS_REGION = "ap-south-1"
    ECR_REPO = "ACCOUNT_ID.dkr.ecr.ap-south-1.amazonaws.com/myapp"
    IMAGE_TAG = "${BUILD_NUMBER}"
  }

  stages {

    stage('Checkout') {
      steps {
        git 'https://github.com/achalgothe/myapp-ci-cd.git'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t myapp:$IMAGE_TAG .'
      }
    }

    stage('Push to ECR') {
      steps {
        sh '''
          aws ecr get-login-password --region $AWS_REGION |
          docker login --username AWS --password-stdin $ECR_REPO

          docker tag myapp:$IMAGE_TAG $ECR_REPO:$IMAGE_TAG
          docker push $ECR_REPO:$IMAGE_TAG
        '''
      }
    }
  }
}
