//
//  IntegerSplitterTests.swift
//  AsciiArtTests
//
//  Created by Rick on 16/02/2018.
//  Copyright © 2018 Audiodog. All rights reserved.
//

import XCTest

class IntegerSplitterTests: XCTestCase {

    let splitter = IntegerSplitter()
    
    func testSplitZero()
    {
        XCTAssertEqual(splitter.split(0), [0])
    }

    func testSplitSingleDigitNumbers()
    {
        XCTAssertEqual(splitter.split(3), [3])
        XCTAssertEqual(splitter.split(7), [7])
    }
    
    func testSplitMultipleDigitNumbers()
    {
        XCTAssertEqual(splitter.split(42), [4,2])
        XCTAssertEqual(splitter.split(123), [1,2,3])
        XCTAssertEqual(splitter.split(2468), [2,4,6,8])
    }

}
