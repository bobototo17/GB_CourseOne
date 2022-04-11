//
//  main.swift
//  one
//
//  Created by apple on 4/4/22.
//

import Foundation

class car {
    enum engineState: String {
        case on = "заведен"
        case off = "заглушен"
    }
    enum windowsState: String {
        case open = "открыты"
        case close = "закрыты"
    }

    
    let brand: String
    let year: Int
    var engine: engineState
    var windows: windowsState
    var trunk: Bool

    init(model: String, year: Int, engine: engineState, windows: windowsState, trunk: Bool) {
        self.brand = model
        self.year = year
        self.engine = engine
        self.windows = windows
        self.trunk = trunk
    }
    func onEngine() {
        self.engine = .on
        print("Двигатель заведен")
    }
    func offEngine() {
        self.engine = .off
        print("Двигатель заглушен")
    }
    func windowsOpen() {
        self.windows = .open
        print("окна открыты")
      }
    func windowsClose() {
        self.windows = .close
        print("окна закрыты")
      }
        
}

class sportCar: car {
    enum spoilerState: String {
           case on = "выдвинут"
           case off = "опущен"
    }
    
    var spoiler: spoilerState
    init(model: String, year: Int, engine: engineState, windows: windowsState, trunk: Bool, spoiler: spoilerState) {
        self.spoiler = spoiler
    super.init(model: model, year: year, engine: engine, windows: windows, trunk: trunk)
    }
    func spoilerOn() {
        self.spoiler = .on
        print("спойлер выставлен")
    }
    func spoilerOff() {
        self.spoiler = .off
        print("спойлер спрятан")
    }
    
}

var car1 = sportCar(model: "VW", year: 2010, engine: .off, windows: .close, trunk: false, spoiler: .off)
car1.spoilerOn()
print(car1)

class trunkCar: car {
    enum trailerVolumeState: String {
        case loading = "опущен"
        case unloading = "поднят"
    }
    
    var trailer: trailerVolumeState
    
    init(model: String, year: Int, engine: engineState, windows: windowsState, trunk: Bool, trailer: trailerVolumeState) {
        self.trailer = trailer
        super.init(model: model, year: year, engine: engine, windows: windows, trunk: trunk)
    }
    func trailerLoad() {
        self.trailer = .loading
        print("прицеп загружен")
    }
    func trailerUnload() {
           self.trailer = .unloading
           print("прицеп пуст")
    
    }
    
}

var trunkCar1 = trunkCar(model: "MAN", year: 2000, engine: .off, windows: .open, trunk: true, trailer: .unloading)

trunkCar1.trailerLoad()
print(trunkCar1)


