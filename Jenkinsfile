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

node('master') {
       try{
       
stage '\u2756  git checkout scm'
     cleanWs() 
              sleep 45
        echo'__________________________________________________________________________________________________________________'
        def scmVars = checkout scm
        echo'___________________________________________________________________________________________________________________'
        echo 'scm : the commit id is ' +scmVars.GIT_COMMIT
        echo 'scm : the commit branch  is ' +scmVars.GIT_BRANCH
        echo 'scm : the previous commit id is ' +scmVars.GIT_PREVIOUS_COMMIT
       sh 'ls -a'
            
       }
       catch (e) {
           sh '''
          a=$(git log -n 1 --skip 1 --pretty=format:%H)
          echo 'The previous commit id is $a, Now we reverting to this commit id '
          git revert $a
         git remote set-url origin "https://forpix:mdali%40786@github.com/forpix/cherry-pick.git"
         git push -u origin master
          '''
         currentBuild.result = 'UNSTABLE'      
       }
       
                
      }
      
