object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        if (leftStrand.length != rightStrand.length) {
            throw IllegalArgumentException("left and right strands must be of equal length")
        }

        return leftStrand.zip(rightStrand).sumOf { (l, r) ->
            (if(l != r) 1 else 0) as Int
        }
    }
}
