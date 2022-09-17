import RegexBuilder

@main
struct RegexOnMontereyDemo {
    private static let dayOfWeekRegex = Regex {
        Optionally {
            Capture {
                ChoiceOf {
                    "Satur"
                    "Sun"
                }
            }
        }
        
        /.*day/
    }
    
    static func main() {
        while true {
            print("What is the day of the week?")
            let dayOfWeekInput = readLine(strippingNewline: true)
            
            guard let inputMatch = dayOfWeekInput?.wholeMatch(of: Self.dayOfWeekRegex) else {
                print("That's not a day of the week.\n")
                continue
            }
            
            print("Today is \(inputMatch.0).\n")
            
            if inputMatch.1 != nil {
                print("It's the weekend!")
                
            }
        }
    }
    
}
