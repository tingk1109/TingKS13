//
//  main.swift
//  TingKS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var Obj1:Brad01? = Brad01()
var Obj2:Brad01? = Brad01()
var Obj3:Brad01? = Brad01()
print(Brad01.counter)

var Obj4 = Obj1
print(Brad01.counter)

//Obj2 = nil
print(Brad01.counter)

//Obj1 = nil
print(Obj4 === Obj1)

var Brad01s = [Obj1, Obj2, Obj3] // [Brad01]
func m1(){
    let Obj5:Brad01? = Brad01()
    Brad01s += [Obj5]
    print("m1:\(Brad01.counter)")
}


print("before:\(Brad01.counter)")
m1()
print("after:\(Brad01.counter)")

print("------")
var brad2:Brad02? = Brad02()
var brad3:Brad03? = Brad03()
brad2!.Obj3 = brad3
brad3!.Obj2 = brad2

brad2 = nil
print(brad2 == nil)
print(brad3!.Obj2 == nil)
brad3?.Obj2?.m1()

