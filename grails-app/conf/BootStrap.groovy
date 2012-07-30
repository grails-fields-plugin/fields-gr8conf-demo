import org.joda.time.*
import co.freeside.demo.*
import static co.freeside.demo.Gender.*
import static co.freeside.demo.Salutation.*

class BootStrap {

    def init = { servletContext ->
    	new Person(salutation: Mr, firstName: 'Bobby', lastName: 'Newmark', gender: male, email: 'count0@esfa.net', address: new Address(street: '3A Covina Concourse Court', city: 'Barrytown, NJ', country: 'USA')).save(failOnError: true)
    	new Person(salutation: Mr, firstName: 'Bart', lastName: 'Simpson', gender: male, birthDate: new LocalDate(1989, 12, 17), email: 'bart@eatmyshor.ts', address: new Address(street: '57 Evergreen Terrace', city: 'Springfield', country: 'USA')).save(failOnError: true)
    }

    def destroy = {
    }
}
