object Isogram {

    fun isIsogram(input: String): Boolean {
        val wordToCheck = input.lowercase().replace(Regex("\\W"), "")
        return wordToCheck.length == wordToCheck.toSet().size
    }
}
