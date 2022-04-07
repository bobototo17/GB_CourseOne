//
//  main.swift
//  one
//
//  Created by apple on 4/4/22.
//

import Foundation

enum engineState: String {
    case on = "заведен"
    case off = "заглушен"
}
enum windowsState: String {
    case open = "открыты"
    case close = "закрыты"
}
enum trunkVolumeState: String {
    case loading = "погружен"
    case unloading = "выгружен"
}


struct car {
    let brand: String
    let year: Int
    let trunk: Int
    var engine: engineState
    var windows: windowsState
    var trunkVolume: trunkVolumeState
    var gruz: Int
    
    mutating func onEngine() {
        self.engine = .on
        print("Двигатель заведен")
    }
    mutating func offEngine() {
        self.engine = .off
        print("Двигатель заглушен")
    }
    func description() {
        print("Автомобиль марки \(brand), \(year) года выпуска, двигатель \(engine), окна \(windows), объем багажника \(trunk)л, груз объемом \(gruz)л будет \(trunkVolume).")
    }
    init() {                      //базовый экземпляр
        brand = "vw"
        year = 1988
        trunk = 350
        engine = engineState.off
        windows = windowsState.close
        trunkVolume = trunkVolumeState.loading
        gruz = 100
    }
    init(model: String, year: Int, trunk: Int, engine: engineState, windows: windowsState, trunkVolume: trunkVolumeState, gruz: Int) { // экземляр чтобы снова вводить данные по авто
        self.brand = model
        self.year = year
        self.trunk = trunk
        self.engine = engine
        self.windows = windows
        self.trunkVolume = trunkVolume
        self.gruz = gruz
    }
}
var car1 = car()
car1.onEngine()
car1.description()

var car2 = car(model: "УАЗ", year: 2020, trunk: 400, engine: .off, windows: .open, trunkVolume: .unloading, gruz: 50)
car2.description()



struct truck {
    let brand: String
    let year: Int
    let trunk: Int
    var engine: engineState
    var windows: windowsState
    var trunkVolume: trunkVolumeState
    var gruz: Int
    
    mutating func onEngine() {
        self.engine = .on
        print("Двигатель заведен")
    }
    mutating func offEngine() {
        self.engine = .off
        print("Двигатель заглушен")
    }
    mutating func onGruz() {
        self.trunkVolume = .loading
        print("груз загружен")
       }
    mutating func offGruz() {
        self.trunkVolume = .unloading
        print("груз выгружен")
    }
    func description() {
        print("Автомобиль марки \(brand), \(year) года выпуска, двигатель \(engine), окна \(windows), грузоподъемностью \(trunk)т, груз \(gruz)т будет \(trunkVolume).")
    }
    init() {
        brand = "belaz"
        year = 2015
        trunk = 200
        engine = engineState.on
        windows = windowsState.open
        trunkVolume = trunkVolumeState.loading
        gruz = 50
    }
    init(brand: String, year: Int, trunk: Int, engine: engineState, windows: windowsState, trunkVolume: trunkVolumeState, gruz: Int) { // экземляр чтобы снова вводить полностью данныепо авто
        self.brand = brand
        self.year = year
        self.trunk = trunk
        self.engine = engine
        self.windows = windows
        self.trunkVolume = trunkVolume
        self.gruz = gruz
    }
}


var truck1 = truck()
truck1.description()
truck1.offGruz()

var truck2 = truck(brand: "kamaz", year: 1990, trunk: 30, engine: .on, windows: .close, trunkVolume: .unloading, gruz: 300)
truck2.description()


