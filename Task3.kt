fun main(){
    println(" Task3\n-------------------------------")
    println("Введите слова через пробел : ")
    val entered = readLine()
    if(entered != null){
        println(entered.split(" ").sorted().distinct().joinToString(" "))
    }
    else{
        println("Входные данные введены некорректно")
    }
    println("-------------------------------\n Task3 ended.")
}