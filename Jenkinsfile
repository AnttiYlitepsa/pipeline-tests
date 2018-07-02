node {

   stage('Run the smoke tests and save the reports') {
        sh('mkdir -p ${WORKSPACE}/reports')
        sh('rm -rf ${WORKSPACE}/reports/*')
        sh('ls -R')
        sh('cat /kc-hybris-test/docker-compose.yml')
        dir('/kc-hybris-test') {
            sh('ls -R')
            sh('rm -rf RobotTests/05_reports/*')
            sh('./runtests.sh login d')
            sh('ls')
            sh('echo $WORKSPACE')
            sh('cp -R RobotTests/05_reports/* ${WORKSPACE}/reports/')
        }
   }


    stage('Publish results (visible under build)') {
        sh('ls -R')
        step([
        $class : 'RobotPublisher',
        outputPath : 'reports/',
        outputFileName : "*.xml",
        disableArchiveOutput : false,
        passThreshold : 100,
        unstableThreshold: 95.0,
        otherFiles : "*.png",
        ])
    }
}