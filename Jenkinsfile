pipeline {
    agent any
    stages {
        stage("deployment") {
            steps {
                script {
                    sh 'tar -cvzf dist.tar.gz *'
                    sh 'scp dist.tar.gz jenkins@65.2.29.148:/var/www/html/team1-fe-angular/'
                    sh 'ssh jenkins@65.2.29.148 "cd /var/www/html/team1-fe-angular/ && tar -xvzf dist.tar.gz"'
                    sh 'ssh jenkins@65.2.29.148 "cd /var/www/html/team1-fe-angular/ && sudo chown -R jenkins:jenkins *"'
                    sh 'ssh jenkins@65.2.29.148 "cd /var/www/html/team1-fe-angular/ && sudo npm install --legacy-peer-deps"'
                    sh 'ssh jenkins@65.2.29.148 "cd /var/www/html/team1-fe-angular/ && sudo ng build"'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
