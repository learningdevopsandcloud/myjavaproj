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
				}
			}
        }
}
