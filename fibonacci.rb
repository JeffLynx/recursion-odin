def fib_iteration(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  arr = [0, 1]
  (num - 1).times do
    arr << (arr[-1] + arr[-2])
  end
  arr
end

# example = fib_iteration(10)
# p example # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fib_recursion(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  arr = fib_recursion(num - 1)
  arr << arr[-1] + arr[-2]
  arr
end

# example = fib_recursion(10)
# p example # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
