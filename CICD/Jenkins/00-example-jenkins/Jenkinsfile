pipeline {
    agent any
    
    environment {
        registry = "chzgustavo/node-helloworld"
        registryCredential = 'docker_hub_login'
        dockerImage = ''
        tag = "v0.0.1"
    }

    stages {
        stage("Test") {
            steps {
                echo 'test the app'
            }
        }

        stage("Build Docker Image") {
            steps {
                script {
                  dockerImage = docker.build registry + ":$tag"
                }  
            }
        }

        stage("Push docker image") {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        //dockerImage.push("${env.BUILD_NUMBER}")
                        dockerImage.push()
                    }
                }
            }
        }
 
        stage("Deploy in cluster") {
            
            steps {
                echo 'deploy the app'
                sh 'kubectl --kubeconfig /home/gustavo/Documentos/kubernetes/kubernetes-ejemplos/kubeconfig/config apply -f ./'
            }
        }

        stage("delete image local") {
            
            steps {
                sh "docker rmi $registry:$tag"
            }
        }
    }


    post {
        // se ejeucta al ultimo de la tuberia
        always {
            // se ejecuta siempre independientemente si sale bien o mal 
            echo 'always'
        }
        success {
            // se ejecuta si es ok pipeline
                echo 'success'
        }
        failure {
            // se ejcuta si falla pipeline
            echo 'failure'
        }
    }
}
