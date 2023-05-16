//
//  SevenSegmentFormatterTests.swift
//  CodeClubTests
//
//  Created by Rick on 17/02/2018.
//  Copyright © 2018 Audiodog. All rights reserved.
//

import XCTest
 
class SevenSegmentFormatterTests: XCTestCase
{
    let formatter = SevenSegmentFormatter(splitter: IntegerSplitter())
    
    func testPrintZero()
    {
        XCTAssertEqual(formatter.format(0), """
         _\u{20}
        | |
        |_|

        """)
    }
    
    func testPrintOne()
    {
        XCTAssertEqual(formatter.format(1), """
           
          |
          |

        """)
    }
    
    func testPrintTwo()
    {
        XCTAssertEqual(formatter.format(2), """
         _\u{20}
         _|
        |_\u{20}

        """)
    }
    
    func testPrintTwentyOne()
    {
        XCTAssertEqual(formatter.format(21), """
         _    \u{20}
         _|   |
        |_    |

        """)
    }
    
    func testPrint1234567890()
    {
        XCTAssertEqual(formatter.format(1234567890), """
             _   _       _   _   _   _   _   _\u{20}
          |  _|  _| |_| |_  |_    | |_| |_| | |
          | |_   _|   |  _| |_|   | |_|   | |_|

        """)
    }
}
