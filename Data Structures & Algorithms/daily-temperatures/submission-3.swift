// class Solution {
//     func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//         var result = Array(repeating: 0, count: temperatures.count)
//         var stac: [Int] = []

//         for (t, temp) in temperatures.enumerated() {
//             while !stac.isEmpty && temp > (temperatures[stac.last!]) {
//                 let pop = stac.popLast() ?? 0
//                 let value = t - pop 
//                 result[pop] = value
//             }
//             stac.append(t)
//         }
//         print(result)

//        return result
//     }
// }

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stac: [Int] = []

        for (t, temp) in temperatures.enumerated() {
            // FIX: Ensure the stack is not empty before checking the last element
            while !stac.isEmpty && temp > temperatures[stac.last!] {
                // Since we checked !isEmpty, stac.popLast() is guaranteed to exist
                let pop = stac.popLast()!
                result[pop] = t - pop 
            }
            stac.append(t)
        }
        
        // NOTE: The second loop over stac is completely unnecessary! 
        // Because result was initialized with 0s, any index left in stac 
        // already has a default value of 0.

        return result
    }
}

