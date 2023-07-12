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
            selector: #selector(countup),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func countup() {
            count -= 1
            if count > 75 {
                print("今は赤です。あと\(count-75)秒で信号が青に変わります。")
            } else if count == 75 {
                print("青になりました！")
            } else if count > 65 {
                print("\(count-65)秒で信号が黄色に変わります。")
            } else if count == 65 {
                print("黄色になりました！")
            } else if count > 60 {
                print("\(count-60)秒で信号が赤に変わります。")
            } else if count == 60 {
                print("赤になりました！")
                
                
            } else if count > 50 {
                print("今は赤です。あと\(count-50)秒で信号が青に変わります。")
            } else if count == 50 {
                print("青になりました！")
            } else if count > 40 {
                print("\(count-40)秒で信号が黄色に変わります。")
            } else if count == 40 {
                print("黄色になりました！")
            } else if count > 35 {
                print("\(count-35)秒で信号が赤に変わります。")
            } else if count == 35 {
                print("赤になりました！")
                    
                    
            } else if count > 25 {
                print("今は赤です。あと \(count-25)秒で信号が青に変わります。")
            } else if count == 25 {
                print("青になりました！")
            } else if count > 15 {
                print("\(count-15)秒で信号が黄色に変わります。")
            } else if count == 15 {
                print("黄色になりました！")
            } else if count > 5 {
                print("\(count-5)秒で信号が赤に変わります。")
            } else if limit == count {
                print("赤になりました！")
                        
                timer.invalidate()
            }
        }
    }
            
let alarm = Alarm()
alarm
