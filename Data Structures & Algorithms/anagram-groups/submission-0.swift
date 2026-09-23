class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var dct :[String: [String]] = [:]
        var result: [[String]] = []
        for str in strs {
            let value = String(str.sorted())
            dct[value, default: []].append(str)
        }

        for (e , value) in dct {
            result.append(value)
        }
        return result
    }
}
