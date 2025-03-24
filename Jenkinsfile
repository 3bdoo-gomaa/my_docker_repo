pipeline {
    agent any  // Run on any available agent
    environment {
        SERVER_CREDENTIAL =credential('server-credential')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                echo "deploying with ${SERVER_CREDENTIAL}"
                sh "${SERVER_CREDENTIAL}"
            }
        }
    }
}
