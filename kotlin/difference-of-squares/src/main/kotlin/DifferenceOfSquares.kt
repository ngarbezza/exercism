import kotlin.math.pow

class Squares(private val number: Int) {

    fun sumOfSquares() = (1..number).sumOf(::square)

    fun squareOfSum() = square((1..number).sum())

    fun difference() = squareOfSum() - sumOfSquares()

    private fun square(it: Int) = it.toDouble().pow(2).toInt()
}
