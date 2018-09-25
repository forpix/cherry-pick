pipeline {
    agent any 
    stages {
        stage ('check') {
            steps {
                cleanWs()
                sh 'pwd;ls -a' 
            }
        }
    }
}
