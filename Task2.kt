
fun main(){
    println(" Task2\n-------------------------------")
    println("Введите слова через пробел : ")
    val entered = readLine()
    if(entered != null){
        println(entered.split(" ").sorted().joinToString(" "))
    }
    else{
        println("Входные данные введены некорректно")
    }
    println("-------------------------------\n Task2 ended.")
}

