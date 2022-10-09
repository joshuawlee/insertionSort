// Add your code below:

var unsortedArray = [String]()
while let line = readLine() {
    unsortedArray.append(line)
}
func lowercase(array: inout [String]) {
    for i in 0..<array.count {
        array[i] = array[i].lowercased()
    }
}

func swap(array: inout [String], firstIndex: Int, secondIndex: Int) {
    let swaps = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = swaps
}

func insertionSort(array: inout [String]) {
    //var stringArray = array
    lowercase(array: &array)
    for i in 1..<array.count {                    
        var x = i
        
        while x > 0 && array[x] < array[x - 1] {        
            swap(array: &array, firstIndex: x, secondIndex: x-1)
            x -= 1            
        }
        
    }
    print(array)
}


insertionSort(array: &unsortedArray)
