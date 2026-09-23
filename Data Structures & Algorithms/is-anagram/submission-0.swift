class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dctS:[Character: Int] = [:]

        if s.count != t.count {
            return false
        }        

        for c in s {
            dctS[c, default: 0] += 1
        }

         for c in t {
            if let value = dctS[c] {
                dctS[c, default: 0] -= 1
                if dctS[c] == 0 {
                    dctS[c] = nil
                }
                
            }
        }
        return dctS.count == 0
    }
}
