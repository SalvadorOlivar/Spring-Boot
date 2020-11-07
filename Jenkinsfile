pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'bat' 
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }
        }
    }
}