#!/usr/bin/groovy

deployNode() {
    checkoutCode {}

	def tag = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()

	dockerBuild {
		imageName = 'helm-heptio-authenticator'
		imageTag = tag
	}
}
