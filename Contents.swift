import UIKit

func lowestNums(numbers: [Int]) {
    var lowestNumbers = [Int]()
    for num in numbers {
        if (lowestNumbers.count < 2) {
            lowestNumbers.append(num)
        } else {
            let index = isLower(lowest: lowestNumbers, number: num)
            if (index == 0) {
                lowestNumbers[index + 1] = lowestNumbers[index]
                lowestNumbers[index] = num
            } else if (index == 1) {
                lowestNumbers[index] = num
            }
        }
    }
    let sum = lowestNumbers[0] + lowestNumbers[1]
    print(sum)
}

func isLower(lowest: [Int], number: Int) -> Int {
    for index in 0..<lowest.count {
        if (number < lowest[index]) {
            return (index)
        }
    }
    return (-1)
}

lowestNums(numbers: [2, 5, -3, 9, -10])
