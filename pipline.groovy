pipeline {

    agent any

    stages {

        stage('Checkout') {

            steps {

                git branch: 'develop',
                    url: 'git@github.com:DARSHAN8913/DEVOPS.git'

            }

        }

        stage('Build and Test') {

            steps {

                sh './test.sh'

            }

        }

    }

}
