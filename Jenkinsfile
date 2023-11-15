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
        stage(check mvn version'){
            steps{
                sh 'mvn -v'
            }
        }
    }
}

