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
                withCredentials([usernamePassword(credentialsId: 'github-Credentials', usernameVariable: 'GIT_USER', passwordVariable: 'GIT_PASS')]) 
                {sh 'git clone https://${GIT_USER}:${GIT_PASS}@github.com/3bdoo-gomaa/my_docker_repo.git'}

            }
        }
    }
}
