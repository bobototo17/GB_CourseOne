//
//  main.swift
//  one
//
//  Created by apple on 4/4/22.
//

import Foundation

enum engineState: String {
    case on = "запущен"
    case off = "заглушен"
}
enum windowsState: String {
    case open = "открыты"
    case close = "закрыты"
}

protocol Car {
    var brand: String {get}
    var year: Int {get}
    var engine: engineState {get set}
    var windows: windowsState {get set}
    var trunk: Bool {get}
    
    func actionWindows(state: windowsState)
    func actionEngine(state: engineState)
}

extension Car {
    mutating func actionWindows(state: windowsState) {
        switch state {
        case .open :
            self.windows = .open
            print("Окна открыты")
        case .close :
            self.windows = .close
            print("Окна закрыты")
        }
    }
    
    mutating func actionEngine(state: engineState){
        switch state {
        case .on:
            self.engine = .on
            print("Двигатель заведен")
        case .off:
            self.engine = .off
            print("Двигатель заглушен")
        }
    }
//    func onEngine() {
//          self.engine = .on
//          print("Двигатель заведен")
//      }
//      func offEngine() {
//          self.engine = .off
//          print("Двигатель заглушен")
//      }
//      func windowsOpen() {
//          self.windows = .open
//          print("окна открыты")
//        }
//      func windowsClose() {
//          self.windows = .close
//          print("окна закрыты")
//        }
}

class sportCar: Car {
    
    var brand: String
    var year: Int
    var engine: engineState
    var windows: windowsState
    var trunk: Bool
    
    func actionWindows(state: windowsState) {}
    func actionEngine(state: engineState) {}
    
    enum spoilerState: String {
           case on = "выдвинут"
           case off = "опущен"
    }
    
    var spoiler: spoilerState
    
    init(brand: String, year: Int, engine: engineState, windows: windowsState, trunk: Bool, spoiler: spoilerState) {
        self.brand = brand
        self.year = year
        self.engine = engine
        self.windows = windows
        self.trunk = trunk
        self.spoiler = spoiler
    }
    func spoilerOn() {
        self.spoiler = .on
        print("Cпойлер выставлен")
    }
    func spoilerOff() {
        self.spoiler = .off
        print("Cпойлер спрятан")
    }
}

extension sportCar: CustomStringConvertible {
    var description: String {
        return ("Спортивный автомобиль марки \(brand), \(year) года выпуска, двигатель \(engine), окна \(windows), наличие багажника \(trunk), спойлер \(spoiler).")
    }
    
}

class trunkCar: Car {
    var brand: String
    var year: Int
    var engine: engineState
    var windows: windowsState
    var trunk: Bool
    
    func actionWindows(state: windowsState) {}
    func actionEngine(state: engineState) {}
    
    enum trailerState: String {
        case loading = "загружен"
        case unloading = "пустой"
    }
    
    var trailer: trailerState
    
    init(brand: String, year: Int, engine: engineState, windows: windowsState, trunk: Bool, trailer: trailerState) {
        self.brand = brand
        self.year = year
        self.engine = engine
        self.windows = windows
        self.trunk = trunk
        self.trailer = trailer
    }
    func trailerLoad() {
        self.trailer = .loading
        print("Прицеп загружен")
    }
    func trailerUnload() {
           self.trailer = .unloading
           print("Прицеп пуст")
    }
    
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return ("Грузовой автомобиль марки \(brand), \(year) года выпуска, двигатель \(engine), окна \(windows), наличие багажника \(trunk), прицеп \(trailer).")
    }
}


var car1 = sportCar(brand: "GTR", year: 2020, engine: .off, windows: .close, trunk: false, spoiler: .off)
var car2 = sportCar(brand: "Porshe", year: 2018, engine: .off, windows: .close, trunk: true, spoiler: .off)


var car3 = trunkCar(brand: "MAN", year: 2015, engine: .off, windows: .close, trunk: true, trailer: .unloading)
var car4 = trunkCar(brand: "MAZ", year: 2010, engine: .on, windows: .close, trunk: true, trailer: .loading)


car1.actionEngine(state: .on)
// car1.onEngine()
print(car1.description)
car2.actionWindows(state: .open)
// car2.windowsOpen()
car2.spoilerOn()
print(car2.description)

car3.actionEngine(state: .on)
car3.trailerLoad()
print(car3.description)
car4.actionWindows(state: .open)
car4.trailerUnload()
print(car4.description)


