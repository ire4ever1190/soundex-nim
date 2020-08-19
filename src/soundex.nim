import strutils

proc getNumber(letter: char): char = 
    ## Returns number corresponding to letter
    ## Returns a char so that it doesn't have to convert later
    case letter.toLowerAscii()
        of 'b', 'f', 'p', 'v':
            return '1'
        of 'c', 'g', 'j', 'k', 'q', 's', 'x', 'z':
            return '2'
        of 'd', 't':
            return '3'
        of 'l':
            return '4'
        of 'm', 'n':
            return '5'
        of 'r':
            return '6'
        else:
            return ' '

proc soundex*(input: string): string =
    ## Gets soundex hash of string
    if len(input) == 0:
        return ""
    result &= input[0].toUpperAscii()
    var previousNum = getNumber(input[0])
    var seperatedByVowel = false
    for letter in input[1..<input.len()]:
        let number = getNumber(letter)
        if number != ' ':
            # Checks if seperated by vowel
            if previousNum == number and seperatedByVowel:
                result &= number

            elif previousNum != number:
                seperatedByVowel = false
                result &= number

            previousNum = number

        if letter in ['a', 'e', 'i', 'o', 'u']:
            seperatedByVowel = true
        
    if len(result) < 4:
        let sizeDiff = 4 - len(result)
        result &= "0".repeat(sizeDiff)
        
    elif len(result) > 4:
        result = result[0..<4]

when isMainModule:
    import random
    proc ranString(): string =
        for i in 0..10:
            result &= sample(Letters)
    echo "starting"
    for i in 0..10000:
        discard soundex(ranString())
    echo "done"
    echo soundex("hello")
    echo soundex("")
