import Foundation
print("010".range(of: #"^[0-9]+$"#, options: .regularExpression) != nil)