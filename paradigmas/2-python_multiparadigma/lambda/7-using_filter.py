numbers = [-2.0 - 1, 0, 1, 2]

positive = filter(lambda n: n > 0, numbers)
print(list(positive))


def is_positive(n):
    return n > 0


print(list(filter(is_positive, numbers)))

print("-" * 30)

numbers2 = [1, 3, 10, 45, 6, 50]
print(list(filter(lambda n: n % 2 == 0, numbers2)))

print("-" * 30)


def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n ** (1 / 2)) + 1):
        if not n % i:
            return False
    return True


print(list(filter(is_prime, range(1, 51))))
