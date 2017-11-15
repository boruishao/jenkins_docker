pipeline {
  agent any
  stages {
    stage('checkout') {
      parallel {
        stage('checkout') {
          steps {
            git(poll: true, url: 'git@github.com:boruishao/patsnap.git', branch: 'dev', changelog: true, credentialsId: 'git')
          }
        }
        stage('envpara') {
          steps {
            build(job: 'jjjjj', propagate: true, wait: true)
          }
        }
      }
    }
    stage('Test') {
      steps {
        timestamps() {
          timeout(time: 3) {
            dir(path: '/') {
              echo 'aa'
            }
            
          }
          
        }
        
      }
    }
    stage('Develop') {
      steps {
        isUnix()
        dir(path: '/opt/')
        cleanWs(cleanWhenAborted: true, cleanWhenFailure: true, cleanWhenSuccess: true, cleanWhenUnstable: true, cleanWhenNotBuilt: true, skipWhenFailed: true, notFailBuild: true)
      }
    }
    stage('') {
      steps {
        error 'hehe'
        mail(subject: 'a', body: 'a', bcc: 'a', cc: 'a')
        emailext(subject: 'b', attachLog: true, attachmentsPattern: 'b', body: 'aaaaaa')
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