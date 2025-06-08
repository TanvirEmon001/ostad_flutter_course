class Solution {
  bool? isPowerOfTwo(int n) {
    if( n < 1) return false;

    int result = 1;
    while(result < n){
      result *= 2;
    }

    return result == n;
  }
}

void main(){
  Solution solution = Solution();
  print(solution.isPowerOfTwo(3));
}