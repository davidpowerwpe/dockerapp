pipeline {
    agent any

    stages {
        stage('Build') {
            agent any
            steps {
                checkout scm
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}