pipeline {
    agent none
     stages {
        stage ('Main Stage') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        stage ('Stage 1') {
                            sh 'echo Stage 1'
                        }
                    }
                }
            }
        }
    }
}
