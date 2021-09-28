
fun main(){
    println(" Task1\n-------------------------------")
    println("Введите слова через пробел : ")
    val entered = readLine()
    if(entered == null){
        println(entered)
    }
    else{
        println("Входные данные введены некорректно")
    }
    println("-------------------------------\n Task1 ended.")
}