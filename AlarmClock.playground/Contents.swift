import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class AlarmClock {
    var timer: Timer?
    var count = 0
    var limit = 120
    
    func start() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(countup),
            userInfo: nil,
            repeats: true)
        
    }
    
    @objc func countup() {
        count += 1
        let hour = count / 60
        let min = count % 60
        print("現在\(hour)時\(min)分です。")
        if limit <= count {
            print("朝です。起きてください！現在\(hour)時\(min)分です。")
            timer?.invalidate()
        }
    }
}
let alarmClock = AlarmClock()
alarmClock.start()

