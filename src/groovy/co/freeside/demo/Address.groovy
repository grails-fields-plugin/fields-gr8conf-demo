package co.freeside.demo

class Address {

	String street
	String city
	String country

	static constraints = {
		street()
		city()
		country()
	}

	@Override
	String toString() {
		"$street, $city, $country"
	}

}