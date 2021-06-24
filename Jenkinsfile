pipeline {
    agent any
    environment {
        TshirtsBuildSecret = credentials('TshirtsBuildSecret')
    }

    stages {
        stage ('Clone') {
            steps {
                git branch: 'dev', url: "https://github.com/ignaciomartinlucas/tshirts.git"
            }
        }

        stage ('Maven Build and Deploy Dev') {
            steps {
                // Run Maven on a Unix agent.
                sh 'mvn -s /usr/lib/jenkins/settings.xml -Denvironment=Sandbox -DmuleDeploy=true -Dusername=$TshirtsBuildSecret_USR -Dpassword=$TshirtsBuildSecret_PSW -Dtarget=tshirts-server-amazon clean package deploy'
            }
        }
        
        stage ('Maven Build and Deploy Prd') {
            steps {
                // Run Maven on a Unix agent.
                sh 'mvn -s /usr/lib/jenkins/settings.xml -Denvironment=Sandbox -DmuleDeploy=true -Dusername=$TshirtsBuildSecret_USR -Dpassword=$TshirtsBuildSecret_PSW -Dtarget=tshirts-server-amazon-prd clean package deploy'
            }
        }


    }
}


