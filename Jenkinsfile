@Library('shared-library') _
pipeline {
  agent any
  environment {
      AWS_CRED = 'cloud_user'
      AWS_REGION = 'us-east-1'
      s3BucketName = 'springboot-demo'
      dockerUsrn = 'darrs08'
      dockerContainer = 'ledger-service'
      dockerCred = 'dockerhub'
  }
  tools {
    maven 'mvn-version'
  }
  stages {
        stage('Build') {
           steps {
              script {
                 mavenPackage()
               }
           }
       }
    
        stage("Build image") {
            steps {
                 script {
                    step.buildNum()
                   step.buildImage("${dockerUsrn}", "${dockerContainer}")
                }
            }
        }
        stage("Push image to Docker") {
             steps {
                script {
                  step.pushImage("${dockerCred}")
                  }
              }
          }
         stage("Push to s3") {
             steps {
               uploadFilesToS3(s3Bucket: "${s3BucketName}")
              }
          }
     }
 }
