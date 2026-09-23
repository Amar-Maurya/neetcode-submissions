class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var dct: [Int: Int] = [:]

        for j  in nums {
            if let value = dct[j] {
                return true 
            } else {
                dct[j, default: 0] += 1
            }
        }
        return false
    }
}
