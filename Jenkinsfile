pipeline {
    agent any

    stages {

        stage('CodeTest') {
            steps {
                sh './scripts/codetest.sh'
            }
        }

        stage('Build') {
            steps {
                sh './scripts/build.sh'
            }
        }

        stage('deploy') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
    }
}
