import Foundation

func readDataFromCSV() -> String! {
    let file: FileHandle? = FileHandle(forReadingAtPath: "./monstersV2.csv")
    if let file = file {
        let data = file.readDataToEndOfFile()
        file.closeFile()
        let str = String(data: data, encoding: .utf8)
        return str
    } else {
        print("Ooops! Something went wrong!")
        return "nothing"
    }
}

func parseCSV(){
    func element(_ string: String) -> String {
        if string.count == 0 {
            return ".none"
        }
        
        var s = string.replacingOccurrences(of: "enumElement", with: "")
            s = "." + s.prefix(1).lowercased() + s.lowercased().dropFirst()
        return s
    }
    
    let dataString: String! = readDataFromCSV()
    var items: [(String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String, String)] = []
    let lines: [String] = dataString.components(separatedBy: NSCharacterSet.newlines) as [String]
    
    for line in lines {
        var values: [String] = []
        if line != "" {
            if line.range(of: "\"") != nil {
                var textToScan:String = line
                var value:String?
                var textScanner:Scanner = Scanner(string: textToScan)
                while !textScanner.isAtEnd {
                    if (textScanner.string as NSString).substring(to: 1) == "\"" {
                        textScanner.currentIndex = textScanner.string.index(after: textScanner.currentIndex)
                        value = textScanner.scanUpToString("\"")
                        textScanner.currentIndex = textScanner.string.index(after: textScanner.currentIndex)
                    } else {
                        value = textScanner.scanUpToString(",")
                    }

                    values.append(value ?? "" as String)
                    
                    if !textScanner.isAtEnd{
                        let indexPlusOne = textScanner.string.index(after: textScanner.currentIndex)
                        textToScan = String(textScanner.string[indexPlusOne...])
                    } else {
                        textToScan = ""
                    }
                    textScanner = Scanner(string: textToScan)
                }
                
                // For a line without double quotes, we can simply separate the string
                // by using the delimiter (e.g. comma)
            } else  {
                values = line.components(separatedBy: ",")
            }
            
            // Put the values into the tuple and add it to the items array
            let item = (values[0], values[2], values[3], values[4], values[5], values[6], values[7], values[8], values[9], values[10], values[11], values[12], values[13], values[14], values[15], values[16], values[17], values[18], values[19], values[20], values[21], values[22], values[23], values[24], values[25], values[26], values[27])
            items.append(item)
            print("")
            print("monster = Monster()")
            print("monster.name = \"\(item.0)\"")
            print("monster.image = \"\(item.1)\"")
            print("monster.level = \(item.2)")
            print("monster.hpMax = \(item.3)")
            print("monster.mpMax = \(item.4)")
            print("monster.attackPower = \(item.5)")
            print("monster.armorClass = \(item.6)")
            print("monster.strength = \(item.7)")
            print("monster.stamina = \(item.8)")
            print("monster.intelligence = \(item.9)")
            print("monster.agility = \(item.10)")
            print("monster.xp = \(item.11)")
            print("monster.gold = \(item.12)")
            print("monster.startFloor = \(item.13)")
            print("monster.endFloor = \(item.14)")
            print("monster.availability = \(item.15)")
//            print("monster.location = \(item.16)")
            var attribute = item.17.replacingOccurrences(of: "Attribute", with: "")
            attribute = "." + attribute.prefix(1).lowercased() + attribute.lowercased().dropFirst()
            print("monster.attributes = \(attribute)")
            print("monster.width = \(item.18)")
            print("monster.height = \(item.19)")
            let numbers = item.20.components(separatedBy: ",")
            if numbers.count > 1 {
                print("monster.offset = CGPoint(x: \(numbers.first!), y: \(numbers[1]))")
            }
            print("monster.weak = \(element(item.21))")
            print("monster.strong = \(element(item.22))")
            print("monster.drop = \"\(item.23)\"")
            print("monster.dropPercentage = \(item.24)")
            print("monster.sleepPercentage = \(item.25)")
            let skills = item.26.replacingOccurrences(of: "enumSkill", with: "")
                .replacingOccurrences(of: " ", with: "")
                .components(separatedBy: ",")
                .map { "." + $0.prefix(1).lowercased() + $0.lowercased().dropFirst() }
                .joined(separator: ", ")
            print("monster.skills = [\(skills)]")
            print("monsters.append(monster)")
        }
    }
    
}

parseCSV()
