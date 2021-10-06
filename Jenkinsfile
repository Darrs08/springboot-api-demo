@Library('shared-library') _
pipeline {
  agent any

  tools {
    maven 'mvn-version'
  }

  stages {
        stage('Build') {
           steps {
              script {
                  welcome('Darren')
                  mavenPackage()
               }
           }
       }
    
        stage("Build image") {
            steps {
                 script {
                    step.buildNum()
                    step.buildImage('darrs08')
                }
            }
        }
    

        stage("Push image") {
             steps {
                script {
                    step.pushImage('dockerhub')
                  }
              }
          }
     }
 }
