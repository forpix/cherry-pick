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
	     ls -a
	      git branch temp;git checkout temp;git checkout master;git branch -d temp
                 touch anaq;git add .;git commit -m "added the files from jenkins"
                 git remote set-url origin http://forpix:mdali%40786@github.com/forpix/cherry-pick.git
                 git push origin HEAD:master
	     '''
                echo 'script is completed here'
       
        }
                
      }
