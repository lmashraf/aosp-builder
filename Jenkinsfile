pipeline {
    agent { 
        dockerfile {
            dir 'build'
        }
    }
    environment {
        AOSP_BRANCH = 'android-9.0.0_r45'
        LUNCH_TARGET = 'aosp_x86_64-eng'
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