pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                script {
                    git 'https://github.com/Alepalnav/extranaCalculadora.git'
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    sh 'mkdir -p webapps/Calculadora'

                    sh 'cp -r Jenkinsfile build src webapps/Calculadora/'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Lógica para desplegar tu aplicación
                  echo 'Despliegue exitoso'
                }
            }
        }
    }
}
