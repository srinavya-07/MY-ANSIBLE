pipeline{
    agent any
    stages{
        stage('checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Venna12/taxi-booking.git']])
            }
        }
        stage('Build'){
            steps{
                sh "mvn package"
            }
        }
        stage('Deploy to tomcat'){
            steps{
                deploy adapters: [tomcat9(credentialsId: '527db3ea-545b-436b-bcbd-3c786d08d357', path: '', url: 'http://3.137.216.135:8080/')], contextPath: 'goutham', war: '**/*.war'
            }
        }
    }
}
