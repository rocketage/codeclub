//
//  SevenSegmentFormatter.swift
//  CodeClub
//
//  Created by Rick on 17/02/2018.
//  Copyright © 2018 Audiodog. All rights reserved.
//

class SevenSegmentFormatter
{
    let splitter: IntegerSplitter
    
    let data = [
        [" _ ", "   ", " _ ", " _ ", "   ", " _ ", " _ ", " _ ", " _ ", " _ "],
        ["| |", "  |", " _|", " _|", "|_|", "|_ ", "|_ ", "  |", "|_|", "|_|"],
        ["|_|", "  |", "|_ ", " _|", "  |", " _|", "|_|", "  |", "|_|", "  |"]
    ]
    
    init(splitter: IntegerSplitter)
    {
        self.splitter = splitter
    }
    
    func format(_ value: Int) -> String
    {
        return format(splitter.split(value))
    }
    
    func format(_ values: [Int]) -> String
    {
        return data.map { row in
            values.map { row[$0] }.joined(separator: " ")
        }.joined(separator: "\n") + "\n"
    }
}
