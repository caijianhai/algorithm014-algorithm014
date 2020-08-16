class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // for (i, ivalue) in nums.enumerated() {
        //     for (j, jValue) in Array(nums[(i+1)...]).enumerated() {
        //         if ivalue + jValue == target {
        //             return [i, j+i+1]
        //         }
        //     }
        // }
        // 记顺序
        var seq: [Int] = []
        var data: [Int: [Int]] = [:]
        for (index, value) in nums.enumerated() {
            if var arr = data[value] {
                arr.append(index)
                data[value] = arr
            } else {
                seq.append(value)
                data[value] = [index]
            }
        }
    
        for dic in data {
            let value2 = target - dic.key
            // 如果是自己
            if value2 == dic.key {
                if dic.value.count >= 2 {
                    return [dic.value[0], dic.value[1]]
                }
            } else {
                if let arr2 = data[value2] {
                    let key1 = dic.key
                    let key2 = value2
                    let v1 = dic.value[0]
                    let v2 = arr2[0]
                    for s in seq {
                        if key1 == s {
                            return [v1, v2]
                        }
                        if key2 == s {
                            return [v2, v1]
                        }
                    }

                }
            }
        }
        return []
    }
}
