package co.freeside.demo

class Person {

	String firstName
	String lastName
	Gender gender
	Date birthDate
	String email
	Address address

    static constraints = {
    	firstName blank: false
    	lastName blank: false
    	gender nullable: true
    	birthDate nullable: true
    	email blank: false, email: true
    	address nullable: true
    }

    static embedded = ['address']
}
