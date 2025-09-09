pipeline {
    agent any

    environment {
        // Path to your existing PEM file on the Jenkins machine
        PEM_FILE = '/home/jelly-server/SSH/Anisto.pem'  
        EC2_USER = 'ubuntu'               // Change if your EC2 user is different
        EC2_HOST = 'ubuntu'  // Replace with your EC2 instance public IP
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/1Z4t-R3p0/Seminar.git'
            }
        }

        stage('Deploy to EC2') {
            steps {
                // Make deploy.sh executable
                sh 'chmod +x deploy.sh'

                // Run deploy.sh with PEM_FILE, EC2_USER, and EC2_HOST as arguments
                sh "./deploy.sh $PEM_FILE $EC2_USER $EC2_HOST"
            }
        }
    }

    post {
        success {
            echo "Deployment successful!"
        }
        failure {
            echo "Deployment failed!"
        }
    }
}
