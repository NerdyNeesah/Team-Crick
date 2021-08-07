#include <iostream>
#include <string>
using namespace std;

int main(){
 
    string s1, s2;
    s1 = "@Sanniya01";
    s2 = "@Sanniya01";

    int i = 0, count = 0;
    while (s1[i] != '\0')
    {
        if (s1[i] != s2[i])
            count++;
        i++;
    }

    cout<< "Sanniya Middha"<<","<<"sanniyamiddha12@gmail.com"<<","<<s1<<","<<"Genomics"<<","<<s2<<","<<count<<endl;
    
    return 0;
}
