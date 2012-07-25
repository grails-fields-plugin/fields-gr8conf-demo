grails.servlet.version = '2.5'
grails.project.work.dir = 'target'
grails.project.class.dir = 'target/classes'
grails.project.test.class.dir = 'target/test-classes'
grails.project.test.reports.dir = 'target/test-reports'
grails.project.target.level = 1.6
grails.project.source.level = 1.6

grails.project.dependency.resolution = {

    inherits 'global'
    log 'warn'
    checksums true

    repositories {
        inherits true

        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()
    }

    dependencies {
        compile 'org.jadira.usertype:usertype.jodatime:1.9'
    }

    plugins {
        build ":tomcat:$grailsVersion"

        compile ':cache:1.0.0'
        compile ':joda-time:1.4'

        runtime ':database-migration:1.1'
        runtime ':fields:1.3-SNAPSHOT'
        runtime ":hibernate:$grailsVersion"
        runtime ':jquery:1.7.2'
        runtime ':resources:1.1.6'
    }
}
