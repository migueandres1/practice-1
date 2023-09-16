# Excercise 9

Given a hash of letters and the number of times they occur, recreate all of the possible anagram combinations that could be created using all of the letters, sorted alphabetically.

## Notes:

- The inputs will never include numbers, spaces or any special characters, only lowercase letters a-z.
- The hash should be given to the script as a string parametter and the script should be smart enoug to recreate the hash from the strin

Example:

```
ruby excercise8.rb '{2=>["a"], 1=>["b", "c"]}'
["aabc", "aacb", "abac", "abca", "acab", "acba", "baac", "baca", "bcaa", "caab", "caba", "cbaa"]
```


**[Reference](https://www.codewars.com/kata/543e926d38603441590021dd)**