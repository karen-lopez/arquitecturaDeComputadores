#include <iostream>
using namespace std;

int mul(int a,int b){
    int result;
    for(int i=0; i<b; i++){
        result=result+a;
    }
    return result;
}

int pot(int c,int d){
    int result;
    if(d==0) return 1;
    
    for(int i=1; i<d; i++){
        result=result + mul(c,c);
        }
    return result;
}

int pol(int x,int k[],int n){
    int result;
    for(int i=0; i<=n; i++){
        result=mul(k[i],pot(x,i))+result;
        }
    return result;
}

int facto(int num){
    int result=1;
    for(int i=2; i<=num; i++){
        result=mul(result,i);
    }
    return result;
}

int divicion(int a,int b){
    int result;
    for(int i=b; i>0; i=i-a){
        result ++;
        }
    return result;
}

int main(){
     cout<<mul(3,6)<<endl;
     
     return 0;
     }
