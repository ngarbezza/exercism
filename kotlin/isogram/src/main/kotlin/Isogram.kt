object Isogram {
    fun isIsogram(input: String): Boolean {
        val charsToCheck = input.lowercase().replace(Regex("\\W"), "")
        return charsToCheck.length == charsToCheck.toSet().size
    }
}
