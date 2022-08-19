pipeline{
    agent any
    environment{
        PASS = credentials('PASS')
    }
    PASS = credentials('PASS')
    stages{
        stage('BUILD'){
            steps{
                sh "./scripts/Build.sh"
                sh "echo build done"
            }
        }
        stage('PUSH'){
            steps{
                sh "./scripts/Push.sh"
            }
        }
        stage('DEPLOY'){
            steps{
                ansiblePlaybook extras: "-e PASS=$PASS -e BUILD_TAG=$BUILD_TAG", installation: 'Ansible Jenkins', inventory: './scripts/hosts', playbook: './scripts/Deploy.yml'
            }
        }
    }
}