pipeline {
    agent any

    parameters {
        string(defaultValue: "master", description: 'Which branch?', name: 'BRANCH_NAME')
    }

    stages {
        stage('test'){
            steps {
                echo "my branch is " + params.BRANCH_NAME
            }
        }
    }

    post {
        success{
            script {
                if( params.BRANCH_NAME == 'master' ){
                    echo "mail list master"
                }
                else {
                    echo "mail list others"
                }
            }
        }
    }
}
