pipeline {
    agent any

    environment {
        PROJECT_NAME="dockerapp-$BUILD_TAG"
    }

    stages {
        
        // Pull code from Github
        stage('Checkout Code') {
            steps {
                checkout scm
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