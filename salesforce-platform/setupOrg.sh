#!/bin/bash
# Set up script for Einstein Platform @ WT17

sfdx force:org:create -s -f config/project-scratch-def.json -a platform-wt17
sfdx force:source:push -u platform-wt17
scripts/einsteinSetup.sh catrescue1tdx@winkelmeyer.com einstein_platform.pem platform-wt17
sfdx force:org:open -u platform-wt17 -p /one/one.app#/sObject/Cat__c/list?filterName=Recent
