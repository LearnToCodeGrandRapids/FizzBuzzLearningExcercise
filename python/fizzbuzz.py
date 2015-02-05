class FizzBuzz:

    def __init__ (self, max_num):
        self.max_num = max_num

    def fizz_buzz(self):
        # todo: use map function to map fizz_buzz_a_num to an array for 0 to max_num. return an array
        return list(map(self.fizz_buzz_a_num, range(1, self.max_num + 1)))

    def fizz_buzz_a_num(self, i):
        ret_val = ""
        if self.is_divisible_by_3(i):
            ret_val = "Fizz"
        if self.is_divisible_by_5(i):
            ret_val += "Buzz"
        if ret_val == "":
            ret_val = i
        return ret_val

    def is_divisible_by_3(self, i):
        return i % 3 == 0

    def is_divisible_by_5(self, i):
        return i % 5 == 0

fb = FizzBuzz(30)
print(fb.fizz_buzz())
#print(fb.fizz_buzz())