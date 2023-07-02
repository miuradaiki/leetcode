# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Input: nums = [3,3], target = 6
# Output: [0,1]

def two_sum(nums, target)
  num_indices = {}

  nums.each_with_index do |num, index|
    # numをkey, indexをvalueとして展開
    # 補数（targetからnumを引いた数）を計算
    complement = target - num
    # num_indicesハッシュ内にcomplementというキーが存在するかどうかを判定する条件
    if num_indices.key?(complement)
      return [num_indices[complement], index]
    end
    num_indices[num] = index
  end
end

