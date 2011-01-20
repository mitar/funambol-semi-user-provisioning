#!/bin/bash -e

BASE="/srv/funambol/Funambol"

CLASSPATH=$BASE/ds-server/default/lib/server-framework-8.7.0.jar${CLASSPATH:+:$CLASSPATH}
CLASSPATH=$BASE/ds-server/default/lib/ds-server-8.7.0.jar${CLASSPATH:+:$CLASSPATH}
CLASSPATH=$BASE/ds-server/default/lib/core-framework-8.7.0.jar${CLASSPATH:+:$CLASSPATH}

export CLASSPATH

mkdir -p dist

javac -source 1.4 -target 1.4 -d dist -s dist com/tnode/funambol/SemiUserProvisioningOfficer.java

echo "Success."
echo
echo "Now add it to Funambol's class path:"
echo
echo "ln -s `pwd`/dist/com/tnode $BASE/tools/tomcat/webapps/funambol/WEB-INF/classes/com/tnode"
echo
echo "And specify 'com/tnode/funambol/SemiUserProvisioningOfficer.xml' as Officer in server settings. Probably symlink it first:"
echo
echo "mkdir -p $BASE/config/com/tnode/funambol/"
echo "ln -s `pwd`/SemiUserProvisioningOfficer.xml $BASE/config/com/tnode/funambol/SemiUserProvisioningOfficer.xml"
