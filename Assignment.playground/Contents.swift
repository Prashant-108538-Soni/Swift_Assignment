// Assignment: 1
// Prashant Soni

class Assignment1
{
    //   Task 1
    func removeFirstAndLastChar(str:String) -> String {
        var newStr = str
        if(newStr.count <= 1)
        {
            return ""
        }
        var index = newStr.index(newStr.startIndex, offsetBy: 0, limitedBy: newStr.endIndex)
        newStr.remove(at: index!)
        index = newStr.index(newStr.startIndex, offsetBy: newStr.count-1, limitedBy: newStr.endIndex)
        newStr.remove(at: index!)
        return newStr
    }
    //   Task 2
    func fullName(firstName: String, lastName: String) -> String{
        return (firstName+" "+lastName)
    }
    
    
}

let asg = Assignment1()
let name: String = asg.removeFirstAndLastChar(str: "PrashantSoni")
print(name)

let fullName = asg.fullName(firstName: "Prashant", lastName: "Soni")
print(fullName)


//   Task 3
class StoredProperty
{
    var name:String
    var age:Int
    var height:Float
    var isVegeterian:Bool
    var gender:Character
    
    // initializer to initialize property
    init(name:String,age:Int,height:Float,isVegeterain:Bool,gender:Character) {
        self.name = name
        self.age = age
        self.height = height
        self.isVegeterian = isVegeterain
        self.gender = gender
      }
    
    func getName() -> String{
        return name
    }
    func getAge() -> Int{
        return age
    }
    func getHeight() -> Float{
        return height
    }
    func getIsVegeterianStatus() -> Bool{
        return isVegeterian
    }
    func getGender() -> Character{
        return gender
    }
}

var storedProperty = StoredProperty(name: "Prashant Soni", age: 21, height: 5.8, isVegeterain: false, gender: "M")
print("Value of class StoredProperty are as follows :-")
print("Name: "+storedProperty.getName())
print("Age: \(storedProperty.getAge())")
print("Height: \(storedProperty.getHeight())")
print("isVegiterian: \(storedProperty.getIsVegeterianStatus())")
print("Gender(M/F): \(storedProperty.getGender())")
