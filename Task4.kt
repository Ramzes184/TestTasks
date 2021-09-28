fun main(){
    println(" Task4\n-------------------------------")
    println("Введите слова через пробел : ")
    val entered = readLine()
    if(entered != null){
        val sortedLine = entered.split(" ").sorted().toMutableList()
        println(sortedLine)
        val occurrences: MutableMap<String, Int> = HashMap()

        for (word in sortedLine) {
            var oldCount = occurrences[word]
            if (oldCount == null) {
                oldCount = 0
            }
            occurrences[word] = oldCount + 1
        }
        println(occurrences)

    }
    else {
        println("Входные данные введены некорректно")
    }
    println("-------------------------------\n Task4 ended.")
}