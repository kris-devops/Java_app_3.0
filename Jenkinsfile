pipeline{
    agent any;
    stages{
        stage('GIT CHECKOUT'){
            steps{
                git branch: 'main', url: 'https://github.com/kris-devops/Java_app_3.0.git'
            }
        }
        stage('Checkput success?'){
            echo " Checked out successfully"
        }
    }
}
