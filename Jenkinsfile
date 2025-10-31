pipeline {
    agent any

    stages {
        stage("checkout code") {
            steps {
                checkout scm
            }
        }

        stage("cleanup") {
            steps {
                bat '''
                for /f %%i in ('docker ps -aq') do docker rm -f %%i
                '''
            }
        }

        stage("build image") {
            steps {
                bat 'docker build -t myimage .'
            }
        }

        stage("create container") {
            steps {
                bat 'docker run -d -p 8501:8501 myimage'
            }
        }
    }
}
