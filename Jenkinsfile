pipeline {  
    agent any  
        stages {  
       	    stage("git_checkout") {  
           	    steps {  
              	    echo "cloning repository" 
              	    echo "repo cloned successfully"  
              	}  
         	}
			stage("running_maven") {
				steps {
					sh 'mvn clean install'
					sh 'pwd'
					sh 'echo $WORKSPACE'
				}
			}
			stage("pusing to s3 bucket") {
				steps {
					sh "aws s3 sync $WORKSPACE/target/ s3://vamsiawsdevops/ --exclude '*' --include '*.war'"
				}
			}
        }
}
