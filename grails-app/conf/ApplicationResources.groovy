modules = {
	application {
        resource url: 'js/application.js'
    }

	'font-awesome' {
		resource url: 'font-awesome/css/font-awesome.css'
	}

	bootstrap {
		dependsOn 'font-awesome'
		resource url: 'bootstrap/css/bootstrap.min.css', nominify: true
		resource url: 'bootstrap/js/bootstrap.min.js', nominify: true
	}

    scaffolding {
    	dependsOn 'bootstrap'
        resource url: 'css/scaffolding.css'
    }
}