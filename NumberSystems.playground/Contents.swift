import Cocoa

var str = "Hello, playground"

// Find the digits that represent 27 in binary
// We know this is 11011 in base 2

// Use the remainder operator to get the first binary digit
// The remainder operator is %
27 % 2

// Find the decimal value left to convert
// The division operator is /
27 / 2

// Get next binary digit
13 % 2
// Get value left to convert
13 / 2

// Next digit
6 % 2
// Value left
6 / 2

// Next binary digit
3 % 2
// Decimal value left
3 / 2

// Last binary digit
1 % 2
// Done - because decimal value left is 0
1 / 2

// Let's convert the base 10 value of 76 to base 2

// binary digit
76 % 2
// left to convert
76 / 2

// binary digit
38 % 2
// left to convert
38 / 2

// binary digit
19 % 2
// left to convert
19 / 2

// binary digit
9 % 2
// left to convert
9 / 2

// binary digit
4 % 2
// left to convert
4 / 2

// binary digit
2 % 2
// left to convert
2 / 2

// binary digit
1 % 2
// left to convert
1 / 2


// Enumeration
//
// An enumeration simply lists possibilities


// Functions
//
// Functions are a way to group (encapsulate) related behaviour
// Once some behaviour is inside a function, the complexity is hidden.
// We can use, or "call", the function whenever we want.
/*
 
 Basic syntax of a function:
 
 func functionName(parameter, parameter2, ...) -> return type {
 
 }
 
 */

// Get the alternate representation of a value in a different base
func getRepresentation(of valueToConvert: Int, inBase base: Int) -> String {
    
    // Create a variable with the value of "valueToConvert"
    // A variable CAN be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var representation = ""

    // The abstraction we will use is a LOOP
    // Our END CONDITION is that the decimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the {  } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {
        
        // Get the next digit
        let nextDigit = decimalValueLeftToConvert % base
        
        // Add that new digit to the representation
        // Swift is a STRICTLY TYPED language
        // It DOES NOT automatically convert data types
        // So, to make the Int into a String, we need to specify this
        representation = String(nextDigit) + representation
        
        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base
        
    }
    
    return representation
    
}

// Call, or use the function
getRepresentation(of: 17, inBase: 2)
getRepresentation(of: 17, inBase: 8)
getRepresentation(of: 17, inBase: 16)

// 1 * 16^1 + 1 * 16^0 = 16 + 1 = 17

getRepresentation(of: 15, inBase: 16)


