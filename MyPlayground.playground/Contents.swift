import UIKit

//задание 1
struct Car {
    let model: String
}

struct Cargo {
    let color: UIColor
    let maxWeight: Int
}

struct CarZ {
    let power: Int
    let doorsNumber: Int
}

//Задание 2
struct Car2 {
    let mark: String
    let yearOfProduction: Int
    let trunkVolume: Double
    var isEngineOn: Bool
    var isWindowsOpened: Bool
    var filledTrunkVolume: Double
}

struct Cargo2 {
    let mark: String
    let yearOfProduction: Int
    let trunkVolume: Double
    var isEngineOn: Bool
    var isWindowsOpened: Bool
    var filledTrunkVolume: Double
}

//Задание 3
enum EngineAction {
    case startEngine, stopEngine
}

enum WindowsAction {
    case openWindows, closeWindows
}

enum TrunkAction {
    case download(weight: Double)
    case upload(weight: Double)
}

//Задание 4
struct Car4 {
    let mark: String
    let yearOfProduction: Int
    let trunkVolume: Double
    var isEngineOn: Bool
    var isWindowsOpened: Bool
    var filledTrunkVolume: Double
    
    mutating func changeEngine(state action: EngineAction){
        switch action {
        case .startEngine:
            self.isEngineOn = true
        case .stopEngine:
            self.isEngineOn = false
        }
    }
    
    mutating func changeWindow(state action: WindowsAction){
        switch action {
        case .openWindows:
            self.isWindowsOpened = true
        case .closeWindows:
            self.isWindowsOpened = false
        }
    }
    
    mutating func makeTrunc(operation action: TrunkAction){
        switch action {
        case let .download(weight):
            let total = filledTrunkVolume + weight
            if total <= trunkVolume {
                filledTrunkVolume = total
            }
        case let .upload(weight):
            let total = filledTrunkVolume - weight
            if total >= 0 {
                filledTrunkVolume = total
            }
        }
    }
    
    func toString() -> String {
        let s = "автомобиль: \(self.mark) год выпуска: \(self.yearOfProduction) объем багажника: \(self.trunkVolume) состояние двигателя: \(self.isEngineOn ? "запущен" : "не запущен") состояние окон: \(self.isWindowsOpened ? "открыты" : "закрыты") загруженность багажника: \(self.filledTrunkVolume)"
        return s
    }

}

struct Cargo4 {
    let mark: String
    let yearOfProduction: Int
    let trunkVolume: Double
    var isEngineOn: Bool
    var isWindowsOpened: Bool
    var filledTrunkVolume: Double
    
    mutating func changeEngine(state action: EngineAction){
        switch action {
        case .startEngine:
            self.isEngineOn = true
        case .stopEngine:
            self.isEngineOn = false
        }
    }
    
    mutating func changeWindow(state action: WindowsAction){
        switch action {
        case .openWindows:
            self.isWindowsOpened = true
        case .closeWindows:
            self.isWindowsOpened = false
        }
    }
    
    mutating func makeTrunc(operation action: TrunkAction){
        switch action {
        case let .download(weight):
            let total = filledTrunkVolume + weight
            if total <= trunkVolume {
                filledTrunkVolume = total
            }
        case let .upload(weight):
            let total = filledTrunkVolume - weight
            if total >= 0 {
                filledTrunkVolume = total
            }
        }
    }
    
    func toString() -> String {
        let s = "автомобиль: \(self.mark) год выпуска: \(self.yearOfProduction) объем багажника: \(self.trunkVolume) состояние двигателя: \(self.isEngineOn ? "запущен" : "не запущен") состояние окон: \(self.isWindowsOpened ? "открыты" : "закрыты") загруженность багажника: \(self.filledTrunkVolume)"
        return s
    }


}

//Задание 5
var car = Car4(mark: "Peugeot", yearOfProduction: 2019, trunkVolume: 400, isEngineOn: false, isWindowsOpened: false, filledTrunkVolume: 0)
var cargo = Cargo4(mark: "MAN", yearOfProduction: 2010, trunkVolume: 4000, isEngineOn: false, isWindowsOpened: false, filledTrunkVolume: 1000)

//Задание 6
car.changeEngine(state: .startEngine)
car.changeWindow(state: .openWindows)
car.makeTrunc(operation: .download(weight: 100))

cargo.changeEngine(state: .startEngine)
cargo.changeWindow(state: .closeWindows)
cargo.makeTrunc(operation: .upload(weight: 355.8))

print(car.toString())

print(cargo.toString())
