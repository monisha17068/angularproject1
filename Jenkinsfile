pipeline {
    agent any
   
    stages {
        stage('git') {
            steps {
               git branch: 'main', credentialsId: '28a05ef9-3b3c-4466-847a-0a6a0edce8b5', url: 'https://github.com/monisha17068/angularproject1.git'
            }
        }
        stage('sonar') 
          {
    
       steps {
   
     

sh '$SCANNER_HOME/opt/sonar-scanner/bin/sonar-scanner -Dsonar.projectKey=scanner -Dsonar.sources=. '
}
}
         stage('build') {
            steps {
                
               sh 'npm install'
               sh 'ng build --prod'
               
            }
        }
     
       
         stage('docker') {
            steps {
                
               sh """
               
              
             docker build -t angular:1.0 .
              docker run -d -p 8083:80 angular:1.0
               """
            }
    
}
      }
 
   
    }


    
