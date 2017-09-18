pipeline {
    agent any

    // Not used here but worth mentioning;
    // - concurrent docker compose projects to run without interference
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
                sh './docker/build_and_test.sh '
            }
            
            post {
                // Save our results
                always {
                    junit 'dockerapp/artifacts/tests_output.xml'
                }
            }
        }
    }
}