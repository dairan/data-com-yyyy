import UIKit

let dataInicio = Date(timeIntervalSinceReferenceDate: 661810115)
let dataFim = Date(timeIntervalSinceReferenceDate: 663310116)
let umDia = TimeInterval(60*60*24)

for dataAtual in stride(from: dataInicio, to: dataFim, by: umDia) {
    
    let dateFormatYYYY = DateFormatter()
    dateFormatYYYY.locale = Locale(identifier: "pt_BR")
    dateFormatYYYY.dateFormat = "MMM dd','YYYY' às 'HH:mm"
    print("YYYY: ",dateFormatYYYY.string(from: dataAtual))
    
    let dateFormatyyyy = DateFormatter()
    dateFormatyyyy.locale = Locale(identifier: "pt_BR")
    dateFormatyyyy.dateFormat = "MMM dd','yyyy' às 'HH:mm"
    print("yyyy: ",dateFormatyyyy.string(from: dataAtual))
    
    let dateFormatY = DateFormatter()
    dateFormatY.locale = Locale(identifier: "pt_BR")
    dateFormatY.dateFormat = "MMM dd','y' às 'HH:mm"
    print("   y: ",dateFormatY.string(from: dataAtual))
    print("-------+++++-------")
}

extension Date: Strideable {
    public func distance(to other: Date) -> TimeInterval {
        return other.timeIntervalSinceReferenceDate - self.timeIntervalSinceReferenceDate
    }
    
    public func advanced(by n: TimeInterval) -> Date {
        return self + n
    }
}
