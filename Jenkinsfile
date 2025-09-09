pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                 git branch: 'main', url: 'https://github.com/1Z4t-R3p0/Seminar.git'
            }
        }

        stage('Deploy to EC2') {
            steps {
                // Use Jenkins credentials to securely access the PEM file
               withCredentials([sshUserPrivateKey(credentialsId: 'ec2-key', keyFileVariable: 'PEM_FILE', usernameVariable: 'EC2_USER')]) {
    // deployment steps here
                    // Give deploy.sh permission to execute
                    sh 'chmod +x deploy.sh'
                    // Run deploy.sh with the PEM file as an argument
                    sh "./deploy.sh ****"
                }
            }
        }
    }

    post {
        success {
            echo " Deployment successful!"
        }
        failure {
            echo " Deployment failed!"
        }
    }
}
