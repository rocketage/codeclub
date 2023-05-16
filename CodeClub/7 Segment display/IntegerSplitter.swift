//
//  IntegerSplitter.swift
//  AsciiArt
//
//  Created by Rick on 16/02/2018.
//  Copyright © 2018 Audiodog. All rights reserved.
//

class IntegerSplitter
{
    
    func split(_ value: Int) -> [Int]
    {
        return String(value).flatMap{ Int(String($0)) }
    }
    
}
