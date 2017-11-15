pipeline {
  agent any
  stages {
    stage('checkout') {
      steps {
        git(poll: true, url: 'git@github.com:boruishao/patsnap.git', branch: 'dev', changelog: true, credentialsId: 'git')
      }
    }
  }
  post {
    always {
      echo 'One way or another, I have finiechoed'
      deleteDir()
      
    }
    
    success {
      echo 'succeeeded!'
      
    }
    
    unstable {
      echo 'I am unstable :/'
      
    }
    
    failure {
      echo 'I failed :('
      
    }
    
    changed {
      echo 'Things were different before...'
      
    }
    
  }
}