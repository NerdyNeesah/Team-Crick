// #include<bits/stdc++.h>
// using namespace std;
#include <iostream>
using namespace std;

int hammingDist(char *str1, char *str2)
{
	int i = 0, count = 0;
	while (str1[i] != '\0')
	{
		if (str1[i] != str2[i])
			count++;
		i++;
	}
	return count;
}

int main()
{   
        cout << "Anisa Ishaq-Balogun,anisabalog0908@gmail.com,@NerdyNeesahh,Genomics,@Nerdy_Neesah" <<",";
	char str1[] = "@NerdyNeesahh";
	char str2[] = "@Nerdy_Neesah";

	cout << hammingDist (str1, str2)<<"\n";

	return 0;
}
