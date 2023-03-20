def square(number):
    return number*number

numbers = [1, 2, 3, 4, 5, 6]

squared = map(square, numbers)
print(list(squared))


#### exemplo 2
str_numbers = ["1", "2", "3", "4", "5", "6"]
int_numbers = map(int, str_numbers)
print(list(int_numbers))

#### exemplo 3
it_1 = [1, 2, 3]
it_2 = [4, 5, 6]

print(list(map(pow, it_1, it_2)))


exemplo4 = map(lambda x, y: x-y, [2, 4, 6], [1, 3, 5])
print(list(exemplo4))
