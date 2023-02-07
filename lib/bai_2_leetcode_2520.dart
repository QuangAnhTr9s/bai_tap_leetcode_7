// https://leetcode.com/problems/count-the-digits-that-divide-a-number/description/

void main() {
  int num = 1248;
  print(countDigits(num));
}

int countDigits(int num) {
  //tạo biến đếm
  int count = 0;
  //chuyển num về string để duyệt từng phần tử với vòng for
  String stringNum = num.toString();
  for(int i = 0; i < stringNum.length; i++){
    //parse phần tử qua int để chia
    int val = int.parse(stringNum[i]);
    if(num % val == 0){
      //nếu chia hết thì count tăng 1
      count ++;
    }
  }
  return count;
}
