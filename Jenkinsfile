#!/usr/bin/env groovy
/*
 *    This for comment section only !
 *    
 */
import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import java.net.URL
import jenkins.model.Jenkins


node ('master') {

        stage ('\u2756 First stage'){
                cleanWs()
        echo'======================================================================================================================'
        def scmVars = checkout(scm).take(6)
        echo'======================================================================================================================'
        
        echo 'scm : the commit id is ' +scmVars.GIT_COMMIT
        echo 'scm : the commit branch  is ' +scmVars.GIT_BRANCH
        echo 'scm : the previous commit id is ' +scmVars.GIT_PREVIOUS_COMMIT
       sh 'ls -a' 
        }
        
        stage ('\u2756 Fourth stage'){
             sh '''
	     ls -a;pwd
	     cd scripts;chmod +x revert.sh;./revert.sh
	      
	     '''
                echo 'script is completed here'
       
        }
                
      }
