#=begin
def array_each(arr,)
    return unless block_given?
    limit = arr.length
    for i in 0..(limit -1)
        yield(arr[i])
    end
end
#=end
def array_each(arr, &block_proc)
    return unless block_proc
    limit = arr.length
    for i in 0..(limit -1)
        block_proc.call(arr[i])
    end
end

num = [1, 5, 7]
num.each do |n|
    puts n
end

numbers = [13, 4, 8]
array_each(numbers) do |number|
    puts number
end