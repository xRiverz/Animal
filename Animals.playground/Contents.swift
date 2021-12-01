import UIKit

class Animal {
    var name : String
    var health : Int = 100
    
    init(name:String){
        self.name = name
    }
    
    func displayHealth()-> Animal {
        print("\(self.name) Health is \(health)")
      return self
    }
}

class Cat : Animal{
    
    func growl() -> Animal {
        print("Rawr!")
      return self
    }
      override init(name: String) {
        super.init(name: name)
        health = 150
    }
    
    func run() -> Cat {
        if self.health >= 10 {
          self.health -= 10
            print("Running")
            
        }
      return self
    }
}

class Cheetah : Cat{
    override func run() -> Cat {
        
        if self.health >= 50 {
            print("Running Fast")
            self.health -= 50
        }
      return self
        }
    }
    
    func sleep(){
        if self.health > 100{
            self.health = 150
        }else{
           self.health += 50
        }
    }
}
class Lion : Cat{
    
    override func growl() -> Cat {
        print("ROAR!!!! I am the King of the Jungle")
      return self
    }
        override init(name:String){
        super.init(name: name)
        self.health = 200
    }

}

let c1 = Cheetah(name:"Alex")

c1.run()
c1.run()
c1.run()
c1.run()

c1.displayHealth()

let l1 = Lion(name:"Simba")

l1.run()
l1.run()
l1.run()

l1.growl()

c1.sleep()
c1.displayHealth()
