class Solution {
    func maxArea(_ heights: [Int]) -> Int {
       var left = 0 
       var rght = heights.count - 1
       var maxCapacty = 0

       while left < rght {
         let volume = min(heights[left] , heights[rght]) * (rght - left)
         maxCapacty = max(maxCapacty, volume)

         if heights[left] < heights[rght] {
            left += 1
         } else {
            rght -= 1
         }
       }
       return maxCapacty
    }
}
