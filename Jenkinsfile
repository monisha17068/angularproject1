pipeline {
    agent any
   

    stages {
        stage('git') {
            steps {
                git branch: 'main', credentialsId: 'd423d47f-ca1d-406a-a94e-bcc3e582b7ca', url: 'https://github.com/monisha17068/angularproject1.git'        }         }
        }
         stage('build') {
            steps {
                
               sh 'npm install'
               sh 'ng build --prod'
               
            }
        }
         stage('docker') {
            steps {
                
               sh 'docker build -t angular:1.0 .'
               sh 'docker run -d -p 8083:80 angular:1.0'
       
    }
}

 
 
         
        
        
            

         


}
}
