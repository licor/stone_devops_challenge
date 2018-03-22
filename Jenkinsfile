pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/licor/stone_devops_challenge.git'
            }
        }
    
        stage('Installing') {
            steps {
                script {
                    def myimage = docker.build("my-image:${env.BUILD_ID}")
                    myimage.inside('-u root') {
                        sh '''
                            cd source
                            npm install
                        '''
                    }
                }
            }
        }
        

        stage('Testing') {
            steps {
                script {
                    docker.image("my-image:${env.BUILD_ID}").inside('-u root') {
                        sh '''
                            cd source
                            npm test
                            npm test -- --coverage
                        '''
                    }
                }
            }
        }
    }
    post {
        success {
            ansiblePlaybook("./webserver-playbook.yml")
        }
        always {
            step([
                $class: 'CloverPublisher',
                cloverReportDir: 'source/coverage/',
                cloverReportFileName: 'clover.xml',
                healthyTarget: [methodCoverage: 70, conditionalCoverage: 80, statementCoverage: 80], // optional, default is: method=70, conditional=80, statement=80
                unhealthyTarget: [methodCoverage: 50, conditionalCoverage: 50, statementCoverage: 50], // optional, default is none
                failingTarget: [methodCoverage: 0, conditionalCoverage: 0, statementCoverage: 0]     // optional, default is none
            ])
        }
    }
}