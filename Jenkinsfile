pipeline {
  agent any
  stages {
    stage('build') {
      agent {
        dockerfile {
          filename 'dockFile'
        }
        
      }
      steps {
        sh 'mkdir /opt/software'
      }
    }
    stage('test') {
      steps {
        sleep 2
      }
    }
    stage('deploy') {
      steps {
        echo 'success'
      }
    }
  }
}