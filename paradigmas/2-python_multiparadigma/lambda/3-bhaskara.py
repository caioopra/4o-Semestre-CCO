delta_f = lambda a, b, c : b*b - (4 * a * c)
bhaskara = lambda a, b, c : ((-b + delta_f(a, b, c)**(1/2)) / (2 * a), (-b - delta_f(a, b, c)**(1/2)) / (2 * a)) \
                            if delta_f(a, b, c) >= 0 else (None, None)
                            
print(bhaskara(1, 4, 4))
print(bhaskara(1, 4, 3))
print(bhaskara(1, 3, 3))