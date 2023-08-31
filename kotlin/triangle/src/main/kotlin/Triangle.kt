class Triangle<out T : Number>(a: T, b: T, c: T) {
    init {
        val aLen = a.toFloat()
        val bLen = b.toFloat()
        val cLen = c.toFloat()
        require(aLen > 0 && bLen > 0 && cLen > 0) { "Sides must be greater than zero" }
        require((aLen + bLen >= cLen) && (aLen + cLen >= bLen) && (bLen + cLen >= aLen)) { "Sides do not form a valid triangle" }
    }

    val isEquilateral: Boolean = a == b && b == c
    val isIsosceles: Boolean = !isEquilateral && a == b || b == c || a == c
    val isScalene: Boolean = !isEquilateral && !isIsosceles
}
