class Solution {
 

   int maxVowels(String s, int k) {
   const Set<String>vowels={'a','i','o','u','e'};
    int count=0;
   int maxCount=0;
   //first window 
   for(int i=0;i<k;i++){
     if(vowels.contains(s[i]))
       count++;
   }
   maxCount=count;
   for(int i=k;i<s.length;i++){
     if(vowels.contains(s[i])) {count++;}
     if(vowels.contains(s[i-k])) {count--;}
     if(count>maxCount){ maxCount=count;}
   }
   
   return maxCount;
    
  }
}