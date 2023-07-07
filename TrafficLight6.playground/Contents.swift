import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class Alarm {
    var timer: Timer = Timer()
    var count: Int = 75
    let limit: Int = 0
    
    init() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(countdown),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func countdown() {
            count -= 1

            switch count {
            case 75: print("今は赤です。")
            case 66...74:
            print("あと\(count-65)秒で信号が変わります。")
            case 65: print("今は青です。")
            case 61...64:
            print("あと\(count-60)秒で信号が変わります。")
            case 60: print("今は黄色です。")
            case 51...59:
            print("あと\(count-50)秒で信号が変わります。")
            case 50: print("今は赤です。")
            case 41...49:
            print("あと\(count-40)秒で信号が変わります。")
            case 40: print("今は青です。")
            case 36...39:
            print("あと\(count-35)秒で信号が変わります。")
            case 35: print("今は黄色です。")
            case 26...34:
            print("あと\(count-25)秒で信号が変わります。")
            case 25: print("今は赤です。")
            case 16...24:
            print("あと\(count-15)秒で信号が変わります。")
            case 15: print("今は青です。")
            case 6...14:
            print("あと\(count-5)秒で信号が変わります。")
            case 5: print("今は黄色です。")
            case 1...5:
            print("あと\(count)秒で信号が変わります。")
            case 0: print("赤になりました！")
                timer.invalidate()
            default: break
            }
        }
    }
            
let alarm = Alarm()
alarm
    




