import spock.lang.Specification
import spock.lang.Stepwise

@Stepwise
class MyTestSpec extends Specification {

    def "my first simple test" () {
        expect:
        assert 2 + 2 == 4
    }

    def "my other simple test" () {
        expect:
        assert "Dylan".length() == 5
    }
}
