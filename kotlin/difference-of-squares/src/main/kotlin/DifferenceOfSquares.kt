import kotlin.math.pow

class Squares(private val number: Int) {

    fun sumOfSquares() = number * (number + 1) * (2 * number + 1) / 6

    fun squareOfSum() = square(number * (number + 1) / 2)

    fun difference() = squareOfSum() - sumOfSquares()

    private fun square(it: Int) = it.toDouble().pow(2).toInt()
}
