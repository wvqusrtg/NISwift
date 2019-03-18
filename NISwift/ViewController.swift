//
//  ViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/14.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit
import SnapKit

enum Rank: Int {
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    case jack,queen,king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades,hearts,diamonds,clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades:
            return "black"
        case .hearts:
            return "black"
        case .diamonds:
            return "red"
        case .clubs:
            return "red"
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnBasic = UIButton()
        btnBasic.setTitle("Swift-基础", for: UIControl.State.normal)
        btnBasic.setTitleColor(UIColor.white, for: UIControl.State.normal)
        btnBasic.backgroundColor = UIColor.red
        //btnBasic.addTarget(superclass, action: Selector(jumpToBasicVC()), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btnBasic)
        btnBasic.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp_topMargin)
            make.left.equalTo(view.snp_leftMargin).offset(10)
            make.right.equalTo(view.snp_rightMargin).offset(-10)
            make.height.equalTo(40)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        let testView = UIView()
        testView.backgroundColor = UIColor.cyan
        view.addSubview(testView)
        testView.snp.makeConstraints { (make) in
            //make.width.equalTo(100)//宽100
            make.width.equalTo(btnBasic)
            make.height.equalTo(80)//高100
            make.centerX.equalTo(view)
            make.top.equalTo(btnBasic.snp_bottomMargin).offset(10)
        }
        //com.nixs.NISwift
        let testLab = UILabel()
        testLab.text = "学习一门新的编程语言，Code是少不了的。在翻译的时候，自己也是在不停的Coding,把书上的每段代码都敲了一遍。学编程，动手是关键，避免眼高手地的情况。在写代码时不要按部就班的去Coding，要学会思考，学会举一反三，学会自我的扩充。举个例子，在一个Demo中，你可以去尝试修改一些东西，然后预测一下将会得到什么样的结果，然后去验证是否和自己的预知一致，若不一致就要寻找原因了。其实在问题中成长是最快的，每个问题的解决就是自我提高的一个过程。有些事儿需要天赋，但有些事儿还是需要努力的，谁生下来就是技术大牛呢~大牛大部分不都是从吃白菜长大的么？好了不扯淡了，“少壮不努力，长大学编程”，切入今天的正题，来窥探一下Swift语言。"
        testLab.numberOfLines = 0
        testLab.textAlignment = NSTextAlignment.left
        testLab.backgroundColor = UIColor.red
        view.addSubview(testLab)
        testLab.snp.makeConstraints { (make) in
            make.top.equalTo(testView.snp_bottomMargin).offset(10)
            make.left.equalTo(view).offset(10)
            make.right.equalTo(view).offset(-10)
        }
        //简单打印函数
        //print(<#T##items: Any...##Any#>)
        print("Hello,World!")
        
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        
        print(myVariable)
        print(myConstant)
        
//        let implicitInteger = 70
//        let implicitDouble = 40.0
//        let expliciDouble:Double = 40
        
        let price:Float = 30.22
        print(price)
        
        let label = "The width is "
        let width = 89.64
        let widthLabel = label + String(width)+"m"
        //let widthLabel = label + width+"m"
        print(widthLabel)
        
        let apples = 4
        let orange = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples+orange) pieces of fruit."
        print(appleSummary)
        print(fruitSummary)
        
        let quotation = """
        「quotation」
        I said "I have \(apples) apples"
        And then I said "I have \(apples+orange) pieces of fruit."
        """
        print(quotation)
        
        //重新给testLab赋值
        testLab.text = quotation
        //使用方括号[] 来创建数组或者字典,并且使用方括号来按照序号或者键访问他们的元素.
        var shoppingList = ["catfist","water","tulips","blue paint"]
        shoppingList[1] = "bottle of water"
        var occupations = [
            "Malcolm":"Caption",
            "Kaylee":"Mechanic"
        ]
        occupations["Jayne"]="public Relations"
        occupations["name"]="倪新生"
        occupations["age"]="27"
        let occupationsPlus = ["school":"HENAN University"]
        
        
        print(shoppingList)
        print(occupations)
        print(occupationsPlus)
        
        //使用初始化器语法来创建一个空的数组或者字典
//        let emptyArray = [String]()
//        let emptyDictionary = [String:Float]()
        
        //控制流
        let individualScores = [74,43,102,89,132]
        var teamScore = 0
        for score in individualScores {
            if(score>50){
                teamScore+=3
            }else{
                teamScore+=1
            }
        }
        print(teamScore)
     
        
        var optionalString: String? = "HELLO"
        print(optionalString==nil)
        
        var optionalName: String? = "John Appleseed"
        optionalName = nil
        var greeting = "HELLO>>>"
        if let name = optionalName {
            greeting = "hello,\(name)"
        }
        
        
        let nickName: String? = nil
        let fullName: String = "NIXINSHENG"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        print(informalGreeting)
        
        //Switch选择语句支持任意类型的数据和各种类型的比较操作--它不再限制于整形和测试相等上
        var vegatable = "red pepper"
        vegatable = "watercress"
        vegatable = "nixs"
        switch vegatable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber","watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        
        let interestingNumbers = [
            "Prime":[2,3,5,7,11,13],
            "Fibonacci":[1,1,2,3,5,8],
            "Square":[1,4,9,16,25]
        ]
        var largest = 0
        var kind=""
        for (kinds,numbers) in interestingNumbers {
            for number in numbers{
                if number > largest{
                    largest = number
                    kind = kinds
                }
            }
        }
        print(kind)
        print(largest)
        
        var n = 2
        var x = 1
        while n<100 {
            n=n*2
            x+=1
        }
        print(n)
        print(x)
        
        var m = 2
        repeat{
            m*=2
        }while m<100
        print(m)
        
        var total = 0
        for i in 0...5{
            total+=i
        }
        print(total)
        
        var T = 0
        for i in 0..<5{
            T+=i
        }
        print(T)
        
        var T2 = 0
        for i in 2..<5{
            T2+=i
        }
        print(T2)
        
        //函数和闭包
        print("////////////////////////////")
        
        //print(greet(person: "Tim", day: "Tuesday"))
        print(greet(person: "Tim", day: "Fine"))
        
        print(greet("Joson", on: "Friday"))
        
        let statistics = calculateStatistics(scores: [5,3,100,4,9])
        print("sum: \(statistics.sum)")
        print("min: \(statistics.min)")
        print("max: \(statistics.max)")
        
        print("sumOf: \(sumOf(numbers: 10,15,20))")
        
        print("内嵌函数:\(returnFifteen(price: 18.2))")
        
        let increment = makeIncrementer()
        print("函数是一等类型:这意味着函数可以把函数作为值来返回\(increment(7))")
        
        let numbers = [20,19,7,12]
        print("函数可以把另外一个函数作为其自身的参数 \(hasAnyMatches(list: numbers, condition: lessThanTen))")
        
        numbers.map({
            (number:Int)->Int in
            let result = 3+number
            return result
        })
        
        let mappedNumbers = numbers.map({number in 3*number})
        print(mappedNumbers)
        
        //let sortedNumbers = numbers.sorted($0>$1)
        //print(sortedNumbers)
        
        
        let shape = Shape()
        shape.numberOfSides = 7
        let shapeDescription = shape.simpleDescription()
        print(shapeDescription)
        
        let test = Square(sideLength: 5.2,name:"my test square")
        print("area:\(test.area())")
        print(test.simpleDescription())
        
        let circle = Circle(r: 1, name: "Here‘s a Circle")
        print(circle.simpleDescription())
        
        let triangle = EauilateralTriangle(sideLength: 3.1,name:"a triangle")
        print("周长:\(triangle.perimeter)")
        triangle.perimeter = 9.9
        print("边长:\(triangle.sideLength)")
        
        let circle2: NamedShape? = Circle(r:1,name:"Here's a Circle")
        //枚举和结构体
        
        let ace = Rank.ace
        let aceRawValue = ace.rawValue
        print(ace)
        print(aceRawValue)
        //print(Rank.simpleDescription())//不能如此这样使用
        print(Rank.jack)
        
        if let convertedRank = Rank(rawValue: 3){
            let threeDescription = convertedRank.simpleDescription()
            print(threeDescription)
        }
        
        let hearts = Suit.hearts
        let heartsDescription = hearts.simpleDescription()
        let color = hearts.color()
        print(hearts)
        print(heartsDescription)
        print(color)
        
        let success = ServerResponse.result("6:00 am", "8:09 pm")
        let failure = ServerResponse.failure("Out of cheese")
        print(success)
        print(failure)
        
        switch success {
        case let .result(sunrise,sunset):
            print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
        case let .failure(message):
            print("Failure ... \(message)")
        }
        //使用struct来创建结构体。
        let threeOfSpades = Card(rank: .three, suit: .spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        print(threeOfSpades)
        print(threeOfSpadesDescription)
        
        var a  = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        
        struct SimpleStructure: ExampleProtocol{
            var simpleDescription: String = "A simple structure"
            mutating func adjust() {
                simpleDescription += " (adjusted)"
            }
        }
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        
        
        do{
            let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
            print(printerResponse)
        }catch{
            print(error)
        }
        
        let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
        
        print(makeArray(repeating: "knock", numberOfTimes: 4))
        
        var possibleInteger: OptionalValue<Int> = .none
        possibleInteger = .some(100)
        
        anyCommonElements([1,2,3], [3])
    }
    func jumpToBasicVC() -> Void {
        //var basicVC = BasicVC()
        //self.presentViewController(vc, animated: true, completion: nil)
    }
    
    func anyCommonElements<T: Sequence,U: Sequence>(_ lhs: T,_ rhs: U) -> Bool
        where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
            for lhsItem in lhs {
                for rhsItem in rhs{
                    if lhsItem == rhsItem{
                        return true
                    }
                }
            }
            return false
        }
    }
    
    //Reimplement the swift standard library's optional type
    enum OptionalValue<Wrapped> {
        case none
        case some(Wrapped)
    }
    
    //把名字写在尖括号里来创建一个泛型方法或者类型
    func makeArray<Item>(repeating item: Item,numberOfTimes: Int) -> [Item] {
        var result = [Item]()
        for _ in 0..<numberOfTimes {
            result.append(item)
        }
        return result
    }
    
    func send(job: Int,toPrinter printerName: String) throws ->String{
        if printerName=="Never Has Toner" {
            throw PrinterError.noToner
        }
        return "Job sent"
    }
    enum PrinterError: Error {
        case outOfPaper
        case noToner
        case onFire
    }
//    extension Int: ExampleProtocol{
//        var simpleDescription: String{
//            return "The number \(self)"
//        }
//        mutating func adjust{
//            self+=42
//        }
//    }
    
    struct Card {
        var rank:Rank
        var suit:Suit
        func simpleDescription() -> String {
            return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
        }
    }
    
    enum ServerResponse {
        case result(String, String)
        case failure(String)
    }
////////////////////////////////////////////////////////////////////////
    func hasAnyMatches(list:[Int],condition:(Int)->Bool) -> Bool {
        for item in list {
            if condition(item){
                return true
            }
        }
        return false
    }
    
    func lessThanTen(number:Int) -> Bool {
        return number<10
    }
    
    func makeIncrementer() -> ((Int)->Int) {
        func addOne(number:Int)->Int{
            return 1+number;
        }
        return addOne
    }
    
    func returnFifteen(price:Float) -> Float {
        var y = price
        func add(){
            y+=0.01
        }
        add()
        return y
    }
    func sumOf(numbers:Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum+=number
        }
        return sum
    }
    
    /// 求元组中的最大值、最小值、和
    ///
    /// - Parameter scores: 目标元组
    /// - Returns: 结果集合
    func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score>max{
                max = score
            }else if score<min{
                min = score
            }
            sum+=score
        }
        return(min,max,sum)
    }
    
    /// 打招呼
    ///
    /// - Parameters:
    ///   - person: 目标对象人
    ///   - day: 周几？
    /// - Returns: 说话
    func greet(person:String,day:String) -> String {
        return "Hello \(person),today is \(day)."
    }
    
    func greet(_ person:String,on day:String) -> String {
        return "Hello \(person),today is \(day)"
    }


