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
          calculator.add(25,25)
          step.build()
        }
      }
    }
    
        stage("Build image") {
            steps {
                 script {
                    calculator.multi(5,5)
                    step.buildImage()
                }
            }
        }
    

      stage("Push image") {
        steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                            myapp.push("latest")
                            myapp.push("${env.BUILD_ID}")
                    }
               }
          }
     }
 }
 }
