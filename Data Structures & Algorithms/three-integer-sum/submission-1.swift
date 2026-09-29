class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        var result: [[Int]] = []
        let num = nums.sorted()
        for i in 0..<nums.count {
    // This 'i' is your fixed element (Pointer 1)
    if i > 0 && num[i] == num[i - 1] { continue }
            
    var left = i + 1  // Pointer 2
    var right = nums.count - 1 // Pointer 3
    
    while left < right {
        // Run standard Two-Pointer logic here...
        let sum = num[i] + num[left] + num[right]

        if sum == 0 {
            result.append([num[i] , num[left] , num[right]])
            while left < right && num[left] == num[left + 1] { left += 1 }
             while left < right && num[right] == num[right - 1] { right -= 1 }
                    
            left += 1
            right -= 1
        } else if sum < 0 {
            left += 1
        } else {
            right -= 1
        }

       }

    }
    
        return result
    }
}