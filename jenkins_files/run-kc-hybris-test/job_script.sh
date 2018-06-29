mkdir -p ${WORKSPACE}/reports
rm -r ${WORKSPACE}/reports/*
cat /kc-hybris-test/docker-compose.yml
cd /kc-hybris-test

rm -r RobotTests/05_reports/*


./runtests.sh login d
ls
echo $WORKSPACE

cp -R RobotTests/05_reports/* ${WORKSPACE}/reports/

#After this, RF plugin reads the reports form the reports folder in the workspace
#I.e. add post build action with robot plugin in the jenkins ui