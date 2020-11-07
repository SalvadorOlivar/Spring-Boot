pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw install' 
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }
        }
    }
}