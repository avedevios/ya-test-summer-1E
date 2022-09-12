//
//  main.swift
//  ya-test-summer-1E
//
//  Created by ake11a on 12.09.2022.
//

import Foundation

let pallindrom = readLine()!

var ans = ""
if pallindrom.count > 1 {
    var flag = false
    let middle: Int = pallindrom.count / 2 - 1
    let firstCharIndex = pallindrom.startIndex
    
    for i in 0...middle {
        let charIndex = pallindrom.index(firstCharIndex, offsetBy: i)
        if pallindrom[charIndex] != "a" && !flag {
            ans = pallindrom[firstCharIndex..<charIndex] + "a" + pallindrom[charIndex...].dropFirst()
            flag = true
            
            break
        }
    }
    if !flag {
        ans = pallindrom.dropLast() + "b"
    }
}

print(ans)
