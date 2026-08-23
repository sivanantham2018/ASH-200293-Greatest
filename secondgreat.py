def second_highest_with_index(nums):
    highest = second = None
    for num in nums:
        if highest is None or num > highest:
            second = highest
            highest = num
        elif num != highest and (second is None or num > second):
            second = num
    if second is None:
        return "NA"
    index = next(i for i, num in enumerate(nums) if num == second)
    return second, index