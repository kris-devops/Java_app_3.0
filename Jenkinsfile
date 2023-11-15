pipeline{
    agent any;
    stages{
        stage('GIT CHECKOUT'){
            steps{
                git branch: 'main',
                credentialsId: 'git-credential',
                url: 'https://github.com/kris-devops/Java_app_3.0.git'
            }
        }
        stage('Checkoutput success?'){
            steps{
                 echo " Checked out successfully"
            }
        }
        stage('Generating maven package and installing to local repo'){
            steps{
                sh 'mvn clean install -DskipTests'
            }
        }
        stage('mvn Integration Test'){
            steps{
            sh 'mvn verify -DskipUnitTests'
            }
        }
        stage('Docker Image Build'){
            steps{
            sh 'docker image build -t krishnakr198989/javaApp:latest .'
            }
        }
    }
}

