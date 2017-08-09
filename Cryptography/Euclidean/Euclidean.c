#include<stdio.h>
int arr[100], i=0,l,m,e,f;
int main() {
 int t;
 printf("Enter the two numbers \n");
 scanf("%d %d",&l,&m);
 if(l>m) {gcd(l,m);f=1;e=0;}
 else {gcd(m,l);f=0;e=1;}
 return 0;
}

void gcd(int a,int b){
  if(b!=0&&b!=1)
  {int quo=a/b; arr[i++]=quo;
  int rem=a%b;
  gcd(b,rem);
  }
  else if(b==1) {printf("Numbers are co-primes\n"); inverse();}
  else if(b==0) {printf("Numbers are not co-primes\n"); exit(0);}
}

void inverse(){
  int prev_a=1, prev_b=0 ,temp;
  int a=0, b=1, k=0;
  for (k = 0; k < i; k++) {
     temp=prev_a - a*arr[k];prev_a=a;a=temp;
     temp=prev_b - b*arr[k];prev_b=b;b=temp;
  }
  printf("%d %d are multiplicative inverses for %d and %d", a,b,(l>m)?l:m,(l>m)?m:l);
}
