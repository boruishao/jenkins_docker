pipeline {
    agent any
    stages {
        stage('Build') {            
            steps {                
                sh 'javac Test.java'           
            }        
        }        
        stage('Test') {            
            steps {                
                echo 'Testing'  
                sh 'java Test'
                echo  'Testing Success'         
            }        
        }
        stage('BuildDocker') {            
            steps {                
                sh 'docker build -t test .'    
            }        
        }    
        stage('Sanity check') {            
            steps {                
                input "Do you want to run docker? "            
            }        
        }   
        stage('RunDocker') {
        	steps{
				
        		sh 'docker run --name jenkinsTest -d -p 8090:8080 test:latest'
        	}
        }   
    }
    post {        
        always {            
            echo 'One way or another, I have finiechoed'            
            deleteDir() /* clean up our workspace */        
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