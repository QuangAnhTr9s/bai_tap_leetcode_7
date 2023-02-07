// https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/description/

void main() {
  List<int> nums =  [1,15,6,3];
  print(differenceOfSum(nums));
}

int differenceOfSum(List<int> nums) {
  int elementSum = 0;
  int digitSum = 0;
  // xử lý từng phần tử trong nums
  for (var e in nums) {
    // tính tổng các phần tử trong nums
    elementSum += e;
    // tính tổng các chữ số trong nums
    //trường hợp phần tử có hai chữ số trở lên
    if(elementSum >= 10){
      //chuyển phần tử -> String để tính tổng các chữ số trong phần tử
      String stringElement = e.toString();
      int sumElement = 0;
      for (int i = 0; i < stringElement.length; i++) {
        sumElement += int.parse(stringElement[i]);
      }
      print('sumElement: $sumElement');
      // tính tổng các chữ số trong nums
      digitSum += sumElement;
    }else{
      digitSum += e;
    }
  }
  print('digitSum: $digitSum');
  return elementSum - digitSum;
}
