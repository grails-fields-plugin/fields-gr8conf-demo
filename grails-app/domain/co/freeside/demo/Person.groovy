package co.freeside.demo

class Person {

	Salutation salutation
	String firstName
	String lastName
	Gender gender
	Date birthDate
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
}
