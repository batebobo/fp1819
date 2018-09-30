#include <string>

#include <cassert>

bool palindromeIterative(const std::string &str){
	for(int i = 0 ; i < str.length() / 2 ; ++i){
		if(str[i] != str[str.length() - i - 1])
			return false;
	}

	return true;
}

bool palindromeRecursive(const std::string &str){
	if(str.length() <= 1)
		return true;
	return str[0] == str[str.length() - 1] && palindromeRecursive(str.substr(1, str.length() - 2)); // string substr (size_t pos = 0, size_t len = npos) const;
}

int main(){

	assert(palindromeIterative("level") == true);
	assert(palindromeIterative("high") == false);
	assert(palindromeIterative("simpleString") == false);
	assert(palindromeIterative("civic") == true);



	assert(palindromeRecursive("level") == true);
	assert(palindromeRecursive("high") == false);
	assert(palindromeRecursive("simpleString") == false);
	assert(palindromeRecursive("civic") == true);

	return 0;
}
