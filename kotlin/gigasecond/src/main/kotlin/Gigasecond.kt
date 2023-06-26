import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime

class Gigasecond(of: LocalDateTime) {
    constructor(of: LocalDate) : this(LocalDateTime.of(of, LocalTime.MIN))

    val date: LocalDateTime = of.plusSeconds(1_000_000_000)
}
