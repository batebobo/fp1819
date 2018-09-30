def palindrome(str):
	if len(str) <= 1:
		return True
	return str[0] == str[len(str) - 1] and palindrome(str[1 : len(str) - 1])

assert palindrome("hello") == False
assert palindrome("level") == True
assert palindrome("civic") == True
assert palindrome("bombaugh") == False 