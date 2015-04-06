//
//  Array2D.swift
//  swiftris
//
//  Created by RH Blanchfield on 3/31/15.
//  Copyright (c) 2015 artchiteq. All rights reserved.
//

//#1

class Array2D<T> {
    let columns: Int
    let rows: Int

//#2
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
//#3
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
//#4
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + columns]
        }
        set(newValue) {
            array[(row * columns) + columns] = newValue
        }
    }
}

