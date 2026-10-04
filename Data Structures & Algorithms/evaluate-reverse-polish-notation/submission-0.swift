class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stac: [Int] = []
    // i "+", "-", "*", or "/"
        for t in tokens {
           if let num = Int(t) {
             stac.append(num)
           } else {
              var frst = stac.popLast() ?? 0
            //   stac.remove()
              var second = stac.popLast() ?? 0
            //   stac.remove()
              var result = 0
             if t == "+" {
                result = second + frst
            } else  if t == "-" {
                result = second - frst
            } else  if t == "*" {
                result = second * frst
            } else  if t == "/" {
                result = second / frst
            } 
                stac.append(result)
           }
        }
        return stac[0]
    }
}
