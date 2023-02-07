// https://leetcode.com/problems/largest-odd-number-in-string/description/
//từ 1 String đại diện cho 1 số nguyên,
// tìm số lẻ lớn nhất được cắt ra từ String đó
void main() {
  String num = "35427";
  print(largestOddNumber(num));
}

String largestOddNumber(String num) {
//check từng số từ phải qua trái của num : 123456...n
//số lẻ lớn nhất được tạo ra: 1..m (m là số lẻ với 1<= m <=n )
  for (int i = num.length - 1; i >= 0; i--) {
    //nếu num[i] là số lẻ thì return số lẻ lớn nhất là num[0]...num[i]
    if (isCheckOddInteger(num[i])) {
      return num.substring(0, i + 1);
    }
  }
  return '';
}

//check chữ số có lẻ không
bool isCheckOddInteger(String n) {
  return (int.parse(n)) % 2 != 0;
}
