// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var str2 = "Mat"
var str3 = str + str2
//This is a concatenation of strings
for character in str {
    println(character)
}
//There are two types of strings in Swift: String and NSString (obj-c)
var str4 = "Test String" as NSString

var subString = str4.substringToIndex(6)
//this only works with NSString type, and takes the index up to the int value

var subString2 = (str as NSString).substringToIndex(8)
//we can downcast using parens here to reType a String to NSString

var endingString = str4.substringFromIndex(3)
//this substrings starting from the index int

var endString = str4.substringWithRange(NSRange(location: 5, length: 2))

str4.containsString("Mat")
str4.containsString("Test")


str4.componentsSeparatedByString(" ")
//can specify here if the components are separated by a string or a character
str4.uppercaseString
str4.lowercaseString
