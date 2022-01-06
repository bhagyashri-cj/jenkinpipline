pipeline {
  agent any
  stages {
    stage('clone') {
      steps {
        sh '''sudo git clone https://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@github.com/bhagyashri-cj/jenkinpipeline.git
sudo chown jenkins:jenkins jenkinpipeline
sudo chown jenkins:jenkins jenkinpipeline/EC2.tf'''
      }
    }

    stage('terraform') {
      steps {
        sh '''sudo terraform -chdir=jenkinpipeline init
sudo terraform -chdir=jenkinpipeline apply -auto-approve
'''
      }
    }

  }
}