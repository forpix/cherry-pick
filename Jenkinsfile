pipeline {
    agent any
    parameters {
string(name: 'DEPLOY_ENV', defaultValue: 'TESTING', description: 'Target environment')
choice(name: 'FRUIT', choices: 'apple\nbanana\npizza', description: 'Pick a fruit')
}
     stages {
        stage ('Main Stage') {
            steps {
                sh 'df -h'
            }
        }
    }
}
