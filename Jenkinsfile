pipeline {
    agent { dockerfile true }
    environment {
        CI = 'true'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/licor/stone_devops_challenge.git'
            }
        }
    
        stage('Install') {
            steps {
                sh '''
                    cd source
                    npm install
                '''
                // sh 'npm run-script build'
            }
        }
        
        // stage('start') {
        //     steps {
        //         sh '''
        //             cd source
        //             npm start
        //         '''
        //     }
        // }
        
        stage('Test') {
            steps {
                sh '''
                    cd source
                    npm test
                '''
            }
        }
        
        stage('Coverage') {
            steps {
                sh '''
                    cd source
                    npm test -- --coverage
                '''
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                    cd source
                    npm run-script build
                '''
				docker run -v "$PWD":/home/node/app -p 3000:3000 node:alpine npm start
            }
        }
    }
    post {
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
