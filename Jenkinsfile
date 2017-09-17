pipeline {
    agent any

    environment {
        PROJECT_NAME="dockerapp_$BUILD_TAG"
    }

    stages {
        
        // Pull code from Github
        stage('Checkout Code') {
            steps {
                checkout scm
                sh 'pwd'
            }
        }
        
        // Setup and Run Tests
        stage('Build & Test') {
            steps {
                echo 'Testing..'
                sh './docker/build_and_test.sh '
            }
        }

        // Save our results
        stage('Archive Results') {
            steps {
                junit 'artifacts/tests_output.xml'
            }
        }
    }
}