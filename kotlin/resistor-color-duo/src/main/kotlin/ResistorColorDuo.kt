object ResistorColorDuo {

    fun value(vararg colors: Color): Int {
        val firstTwoValues = colors.take(2).map(Color::ordinal)
        return firstTwoValues.joinToString("").toInt()
    }
}
