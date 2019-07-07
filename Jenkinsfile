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
                sh 'echo "Preparing ..."'
                sh 'cd /aosp && /aosp_repo.sh'
                }
        }        
        stage('build') {
            steps {
                sh 'echo "Building ..."'
                sh 'cd /aosp && /aosp_build.sh'
            }
        }
        stage('archive') {
            steps {
                sh 'echo "Archiving ...""'
                sh 'cd /aosp && /aosp_build.sh'
            }
        }
    }
}