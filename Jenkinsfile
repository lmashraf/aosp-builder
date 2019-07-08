pipeline {
    agent { 
        dockerfile {
            dir 'build'
            args '-v /aosp:/aosp'
            args '-v /artifacts:/artifacts'
            args '-v /app:/app'
        }
    }
    stages
    {
        stage('prepare') {
            steps {
                sh 'cd /aosp && ./aosp_repo.sh'
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