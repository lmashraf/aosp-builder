pipeline {
    agent { 
        dockerfile {
            dir 'build'
            args '-v /aosp:/aosp -v /app:/app -v /artifacts:/artifacts'
        }
    }
    stages
    {
        stage('prepare') {
            steps {
                sh 'cd /aosp'
                sh 'ls -alrt /aosp/'
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