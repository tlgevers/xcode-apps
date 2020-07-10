import UIKit

func divide(num1: Int, num2: Int) -> Int {
    let answer = num1 / num2
    return answer
}

let answer = divide(num1: 10, num2: 5)
print("The answer is \(answer)")

func loveCalc(person1: String, person2: String) -> UInt32 {
    let compatibility = arc4random_uniform(101)
    return compatibility
}

loveCalc(person1: "Trevor Gevers", person2: "Jessica Chambers")

func BMI(weight: Float, height: Float) {
    let bmi = weight / pow(height, 2)
    let roundedBMI = String(format: "%.2f", bmi)
    if bmi < 25 {
        print("You're bmi is \(roundedBMI) and you are overweight.")
    }
    else if bmi >= 18.5 && bmi < 25 {
        print("You're bmi is \(roundedBMI) and you have a normal weight.")
    }
    else if bmi < 18.5 {
        print("You're bmi is \(roundedBMI) and you are underweight.")
    }
}

BMI(weight: 130, height: 6.2)

let numbers = [1, 2, 3, 4, 5, 6, 7, 8]

var sum = 0

for n in numbers {
    sum += n
}

print("The sum is \(sum)")

for n in 1..<10 {
    print(n)
}

for n in 1...10 where n % 2 == 0 {
    print(n)
}

for n in (1...10).reversed() {
    print(n)
}

func beerSong(bottles: Int) -> String {
    var lyrics: String = ""
    
    for n in (1...bottles).reversed() {
        lyrics += "\n\(n) bottles of beer on the wall, \(n) bottles of beer. \nTake one down and pass it around, \(n - 1) bottles of beer on the wall.\n"
    }
    return lyrics
}

print(beerSong(bottles: 99))

func noSpecArg(outsideParam insideParam: String) {
    print(insideParam)
}

noSpecArg(outsideParam: "test")


