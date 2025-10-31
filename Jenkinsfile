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
                docker ps -aq > tmp.txt
                if exist tmp.txt (
                    for /f %%i in (tmp.txt) do docker rm -f %%i
                )
                del tmp.txt
                exit 0
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

