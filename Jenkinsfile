#!/usr/bin/groovy

deployNode() {
    checkoutCode {}

    def tag = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
    def buildDate = sh(returnStdout: true, script 'date -u +"%Y-%m-%dT%H:%M:%SZ"').trim()

    dockerBuild {
        imageName = 'helm-heptio-authenticator'
        imageTag = tag
        buildArgs = [
          "VCS_REF" : tag
          "BUILD_DATE" : build_date
        ]
    }
}
