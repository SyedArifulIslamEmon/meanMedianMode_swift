//
//  main.swift
//  demo
//
//  Created by Sierra 4 on 27/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation

var array: [Int] = [2,5,7,9,11,13]
var total: Int = array.count
var count: Int = 0
var median_val: Int = 0
var median: Int = 0
var temp: Int = 0
var temp_1: Int = 0
var new: Int = 0
var mode: Int = 0

var array_1: [Int] = array


func mean (series:[Int])->Float{
    
    for x in series {

        count += x
    }
    
    let mean:Float = Float(count)/Float(total);
    
    return Float(mean)

    
}
print("mean = \(mean(series: array))")



func median (series:[Int])->Int{
    //let sorted_series = series.sorted()
    
    if total % 2 == 0 {
    
        median_val = (total + 1)/2
    

    }

    else {

        median_val = total/2
    
    }
    
    median = series[median_val]
    
    return median

}
print("median = \(median(series: array))")


func mode (series:[Int])->Int{

    for x in array{
        for y in array{
            if x==y {
                temp += 1
            }
            
        }
        
        //if
    
    //for n in array{
    if temp_1 < temp{
            new = x
            temp_1 = temp
            mode = temp
    }
    else{
        new = x
        mode = temp_1
        
        }
    }    //mode = series[]
    
    return mode
}
print("mode = \(mode(series: array))")



print("Hello, World!")



