pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/kaushik-code/mack-react.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm audit fix'
         sh 'npm run build'
      }
    }  
    
            
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
  }
}
