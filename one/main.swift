//
//  main.swift
//  one
//
//  Created by apple on 4/4/22.
//

import Foundation

// 1. Решить квадратное уравнение. a*x*x + b*x + c = 0

let a: Double = 3
let b: Double = -14
let c: Double = -5
let x1: Double
let x2: Double

let D = b * b - 4 * a * c

if D > 0 {
    x1 = round((-b + sqrt(D)) / (2 * a) * 100) / 100
    x2 = round((-b - sqrt(D)) / (2 * a) * 100) / 100
    print("Один корень = \(x1), второй корень = \(x2).")
} else if D == 0 {
    x1 = round(-b / (2 * a) * 100) / 100
    print("Один корень = \(x1).")
} else {
    print("Корней нет")
}

// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let catet1 = 9.0
let catet2 = 3.0

let S = 0.5 * catet1 * catet2
let hypotenuse = round(sqrt(catet1 * catet1 + catet2 * catet2) * 100) / 100
let P = round((catet1 + catet2 + hypotenuse) * 100) / 100
print("Площадь = \(S), гипотенуза = \(hypotenuse), периметр = \(P).")

// 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var deposit = 5000.0
let percent = 13.0

// с ежегодной капитализацией

deposit += deposit * percent / 100         // через 1 год
deposit += deposit * percent / 100         // через 2 года
deposit += deposit * percent / 100         // через 3 года
deposit += deposit * percent / 100         // через 4 года
deposit += deposit * percent / 100         // через 5 лет

print("Через 5 лет сумма вклада с годовой капитализацией будет равна \(round(deposit * 100) / 100).")

// без капитализации

var deposit2 = 5000.00

deposit2 += round(deposit2 * percent * 5) / 100

print("Через 5 лет сумма вклада без капитализации будет равна \(deposit2).")

