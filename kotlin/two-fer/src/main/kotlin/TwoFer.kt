fun twofer(name: String): String {
    return "One for $name, one for me.";
}

fun twofer(): String {
    return twofer("you")
}
