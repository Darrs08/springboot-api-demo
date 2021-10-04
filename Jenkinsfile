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
          mavenPackage()
        }
      }
    }
    
        stage("Build image") {
            steps {
                 script {
                    calculator.multi(5,5)
                    step.buildNum()
                    step.buildImage('darrs08')
                }
            }
        }
    

      stage("Push image") {
        steps {
                script {
                      step.pushImage()
                    }
               }
          }
     }
 }
 
