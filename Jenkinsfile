pipeline {
    agent { 
        dockerfile {
            dir 'build'
        }
    }
    stages
    {
        stage('prepare') {
            sh 'echo "Preparing ..."'
        }        
        stage('build') {
            sh 'echo "Building ..."'
        }
        stage('archive') {
            sh 'echo "Archiving ...""'
        }
    }
}