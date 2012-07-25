package co.freeside.demo

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Person {

	Salutation salutation
	String firstName
	String lastName
	Gender gender
	LocalDate birthDate
	String email
	Address address

    static constraints = {
    	salutation nullable: true
    	firstName blank: false
    	lastName blank: false
    	gender nullable: true
    	birthDate nullable: true
    	email blank: false, email: true
    	address nullable: true
    }

    static embedded = ['address']

    static mapping = {
    	birthDate type: PersistentLocalDate
    }
}
