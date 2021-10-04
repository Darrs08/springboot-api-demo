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
        }
        sh 'mvn package'
        }
    }
    
        stage("Build image") {
            steps {
                 script {
                  calculator.multi(5,5)
                    echo "Build image with tag: ${env.BUILD_ID}"
                    myapp = docker.build("darrs08/ledger-service:${env.BUILD_ID}", "--build-arg VERSION=${env.BUILD_ID} .")
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
