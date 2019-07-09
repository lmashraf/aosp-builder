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
                sh 'repo init --depth=1 -u https://android.googlesource.com/platform/manifest -b android-9.0.0_r45'
                sh 'repo sync  -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)'
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