fun main(args: Array<String>){
    val check = if (args.isEmpty()){
        readLine().toString().split(" ").toList()
    }
    else{
        args.toList()
    }
    if (check [0] != ""){
        show(check)
    }
}

fun show (array: List<String>){
    array.sorted().groupingBy { it }.eachCount().toList().sortedByDescending { it.second }.map { "${it.first} ${it.second}" }.forEach(::println)
}
