// https://leetcode.com/problems/alternating-digit-sum/

void main() {
  int n = 111;
  print(alternateDigitSum(n));
}

int alternateDigitSum(int n) {
  int sum = 0;
  //chuyển n thành String để xử lý từng phần tử của n
  String stringN = n.toString();
  for (int i = 0; i < stringN.length; i++){
    if(i%2 == 0){
      //phần tử thứ 0,2,4... thì gắn dấu +
      sum += int.parse(stringN[i]);
    }else{
      //phần tử thứ 1,3,5... thì gắn dấu -
      sum -= int.parse(stringN[i]);
    }
  }
  return sum;
}
