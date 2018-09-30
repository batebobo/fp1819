s1 = "asddsa"
s2 = "not_palindrome"

def palindrome(string):
	if len(string) == 0:
		return True
	else:
		return string[0] == string[len(string) - 1] and palindrome(string[1 : len(string) - 1])


assert palindrome(s1) == True
assert palindrome(s2) == False