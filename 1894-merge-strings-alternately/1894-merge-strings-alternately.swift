class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""
        let minLength = min(word1.count, word2.count)

        for i in 0..<minLength {
            result.append(word1[word1.index(word1.startIndex, offsetBy: i)])
            result.append(word2[word2.index(word2.startIndex, offsetBy: i)])
        }

        if word1.count > minLength {
            result.append(contentsOf: word1[word1.index(word1.startIndex, offsetBy: minLength)...])
        } else if word2.count > minLength {
            result.append(contentsOf: word2[word2.index(word2.startIndex, offsetBy: minLength)...])
        }
        return result
    }
}
