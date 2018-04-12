sfdx force:org:create -s -f config/project-scratch-def.json -a einstein-wt17
sfdx force:source:push -u platform-wt17
scripts/einsteinSetup.cmd catrescue1tdx@winkelmeyer.com ../einstein_platform.pem platform-wt17
sfdx force:org:open -p /one/one.app#/sObject/Cat__c/list?filterName=Recent
