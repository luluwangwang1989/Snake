pipeline {
  agent any
  stages {
    stage('snake job') {
      steps {
        build 'snake'
      }
    }
    stage('test') {
      steps {
        parallel(
          "test1": {
            sh 'echo "run test"'
            
          },
          "test2": {
            sh 'echo "run test2"'
            
          }
        )
      }
    }
    stage('build') {
      steps {
        sh 'echo "build docker image"'
      }
    }
    stage('depioy') {
      steps {
        sh 'echo "deploy project"'
      }
    }
  }
}