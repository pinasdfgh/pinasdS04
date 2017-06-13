//
//  File.swift
//  pinasdS04
//
//  Created by user on 2017/6/8.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

func test1(){
    var a1=10
    var a2=8
    switch a1 {
    case 1:
        print("A")
    case a2+23:
        print("B")
    case 10:
        print("C")
        fallthrough
    case 100:
        print("C1")
        fallthrough
    case 102:
        print("C2")
    default:
        print("D")
    }
    print("------------")
    
    var month = arc4random() % 12 + 1
    print("\(month)月有",terminator:"")
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        print("31",terminator:"")
    case 2:
        print("28")
    default:
        print("30")
    }
    
    print("------------")
    
    var score = sqrt(Double(arc4random() % 101))*10
    var scoreA = Int(score)
    print(scoreA)
    switch score{
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("E")
    }
    
}

func test2(){
    var point = (1,4,23)
    switch point{
    case (1,2,3):
        print("A")
    case (1,_,24):
        print("B")
    case (_,_,20...30):
        print("C")
    default:
        print("D")
    }


print("-----------")

    switch point {
    case (let x,4,23): //case (_,4,23) and _ ->x can use
        print("the point x-axis is \(x)")
    default:
        print("XX")
    }
    
    print("-------------")
    
    switch point{
    case (1, let y, let z) where y == z:
        print("A")
    case (1,let y, let z) where y < z:
        print("B")
    default:
        print("C")
    }
}


func test3(){
    var a1 = Int.init(1.23)  //struct Int 建構式
    var a2 = Int.init("Brad")
    var a3 = Int(1.23) //型別轉換
    
    print(a1)
    print(a2)
    print(a3)
}

func test4(){
    
    //if加一個＝號代表判斷a4是不是nil
    var a4:Int?
    if var b1 = a4 {
        print("A")
    }else{
        print("B")
    }
    
    var a5:[Int] = [123,122]
    if let a6 = a5.first{
        print(a6)
    }else{
        print("XX")
    }
    var a6:Bool? = false
    if let b2 = a6{
        print(b2)
    }else{
        print("XX")
    }
}

func test5(){
    //collection集合
    //1.Array
    //2.dictoray:key->value (mapping)
    //3.set a.不重複 b.無順序
    var a1 = [1,2,3,4] //Array<Int> =>泛型
    print(type(of:a1))
    let a2:[Any] = [1,2,"brad",true] //推論不出型別 ＝>[Any]
    print(type(of:a2))
    print(a2)
    
    var a3:[Int] = []
    let a4:Array<Int> = Array()
    let a5:[Int] = Array()
    let a6:Array<Int> = []
    
    if a3.isEmpty {
        print("empty")
    }else{
        print("content")
    }
    a1.reserveCapacity(100) //struct前面要struct名,func前面可為struct 變數名
    print(a1.count)
    print(a3.count)
    
    print(a1.capacity)
    
    let a8 = Array(repeating:0, count:6) //建構式建立sturct第一個跑的func=>init(acrg),acrg is Array(acrg)
    print(a8.description)
    
    a3.append(123)
    a3.append(contentsOf: [234,1,2,43,1,2,3,4,5])
    print(a3.description)
    a3[2...5] = [101,102,103,104,105]
    print(a3.description)
    a3.insert(99, at:2)
    print(a3.description)
    a3.remove(at: 3)
    print(a3.description)
    
    for value in a3{
        print(value)
    }
    print("----------")
    
    for i in 0..<a3.count{
        print(a3[i])
    }
    
    print("-----------")
    
    
    for(i , value) in a3.enumerated(){
        print("\(i) => \(value)")
    }
    
}
func test6(){
    var pasity = Array.init(repeating: 0, count: 6)
    var rand:Int
    for _ in 0...1000{
        rand = Int(arc4random() % 9);
        rand = rand >= 6 ? rand - 3 : rand
        pasity[rand] += 1
    }
//    for value in pasity{
//        print(value)
//    }
    for (i , value) in pasity.enumerated(){
        print("\(i+1) => \(value)")
    }
    
    
}


