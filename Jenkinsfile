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
        echo'__________________________________________________________________________________________________________________'
        def scmVars = checkout scm
        echo'___________________________________________________________________________________________________________________'
        echo 'scm : the commit id is ' +scmVars.GIT_COMMIT
        echo 'scm : the commit branch  is ' +scmVars.GIT_BRANCH
        echo 'scm : the previous commit id is ' +scmVars.GIT_PREVIOUS_COMMIT
       sh 'ls -a'
              stage ('try the blocker') {
       properties([[$class: 'BuildBlockerProperty', 
                    blockLevel: <object of type hudson.plugins.buildblocker.BuildBlockerProperty.BlockLevel>, 
                    blockingJobs: '.*Dummy-project.*', 
                    scanQueueFor: <object of type hudson.plugins.buildblocker.BuildBlockerProperty.QueueScanScope>, 
                    useBuildBlocker: true]])
              }
       }
       catch (e) {
           sh '''
          a=$(git log -n 1 --skip 1 --pretty=format:%H)
          echo 'The previous commit id is $a, Now we reverting to this commit id '
          git revert $a
         git remote set-url origin "https://c5271915:Moula%40470@github.wdf.sap.corp/c5271915/Testing.git"
         git push origin --tags
          
          '''
         currentBuild.result = 'UNSTABLE'      
       }
       
                
      }
      
