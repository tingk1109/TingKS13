//
//  BradAPI.swift
//  TingKS13
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class Brad01{
    static var counter = 0;
    init(){
        print("Brad01:init()")
        Brad01.counter += 1
    }
    deinit {
        print("Brad01:deinit()")
        Brad01.counter -= 1
    }
}

class Brad02{
    var Obj3:Brad03?
    func m1(){print("Brad02:m1()")}
    deinit {
        print("Brad02:die")
    }
}
class Brad03{
    weak var Obj2:Brad02? // weak使元件變弱型別
    func m1(){print("Brad03:m1()")}
    deinit {
        print("Brad03:die")
    }
}
