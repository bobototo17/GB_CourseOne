//
//  main.swift
//  one
//
//  Created by apple on 4/4/22.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.

func evenOrOdd(_ number: Int) {
    if number % 2 == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

evenOrOdd(0)
evenOrOdd(9)

print("=======")

//2.Написать функцию, которая определяет, делится ли число без остатка на 3.

func divisionWithoutRemainderByThree(number: Int) {
    number % 3 == 0 ? print("Делится без остатка на 3") : print("Не делится без остатка на 3")
}

divisionWithoutRemainderByThree(number: 10)
divisionWithoutRemainderByThree(number: 18)

print("=========")

//3. Создать возрастающий массив из 100 чисел.

var growingArray = [Int]()

for i in 1...100 {
    growingArray.append(i)
}
print(growingArray)

print("=========")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for (_, value) in growingArray.enumerated() {
    if value % 2 == 0 || value % 3 > 0 {
        growingArray.remove(at: growingArray.firstIndex(of: value)!)
    }
}
print(growingArray)

