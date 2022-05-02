import Foundation

struct Constansts {
    let instanceProperty = "ABC"
    static let typeProperty = "123"
    
    func instanceMethod(){
    }
    
    static func typeMehod() {
    }
}


print(Constansts.typeProperty)
print(Constansts.typeMehod())

let myConstant = Constansts()
print(myConstant.instanceProperty)
print(myConstant.instanceMethod())



