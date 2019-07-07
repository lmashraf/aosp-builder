pipeline {
    agent { 
        dockerfile {
            dir 'build'
        }
    }
    stages
    {
        stage('prepare') {
            steps {
                sh 'pwd'
                sh 'ls -lart'
                sh 'id'
                sh 'cd /aosp'
                sh 'pwd'
                sh 'ls -lart'
                sh 'id'                
                sh './aosp_repo.sh'
                }
        }        
        stage('build') {
            steps {
                sh 'cd /aosp && ./aosp_build.sh'
            }
        }
        stage('archive') {
            steps {
                sh 'cd /aosp && ./aosp_build.sh'
            }
        }
    }
}