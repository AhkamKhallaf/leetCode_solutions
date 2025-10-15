class Solution {
  int maxArea(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int maxArea = 0;

  while (left < right) {
    int width = right - left;
    int h = height[left] < height[right] ? height[left] : height[right];
    int area = width * h;
    if (area > maxArea) maxArea = area;

    // Move the smaller height
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maxArea;
}

void main() {
  print(maxArea([1,8,6,2,5,4,8,3,7])); // Output: 49
}

}