#!/bin/bash
# Set up script for Einstein Platform @ WT17

git clone https://github.com/muenzpraeger/salesforce-einstein-platform-apex.git
cd salesforce-einstein-platform-apex
sfdx force:org:create -s -f config/project-scratch-def.json -a einstein-wt17
sfdx force:source:push
sfdx force:user:permset:assign -n Einstein_Platform_Playground
scripts/einsteinSetup.sh rwinkelmeyer-1018100@salesforce.com ../einstein_platform.pem
sfdx force:org:open -p /one/one.app#/n/Playground
