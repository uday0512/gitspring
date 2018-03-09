pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t 36.255.252.200:5000/shanem/spring-petclinic:latest .'
        sh 'docker run -p 8089:8089 shanem/spring-petclinic'
        sh 'docker push 36.255.252.200:5000/shanem/spring-petclinic:latest'
      
      }
    }
  }
}
