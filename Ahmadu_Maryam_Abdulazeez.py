#!/usr/bin/env python
# coding: utf-8

# In[1]:


name = "Ahmadu Maryam Abdulazeez"
email_address ="abdulazeezmaryam108@gmail.com"
slack_username = "@maryam"
biostack = "genomics"
twitter_handle = "@maryamahmadu108"
#hamming_distance = 0
print(name,email_address, slack_username, biostack, twitter_handle, sep=",",end=",")


# In[2]:


def hammingDist(str1, str2):
    i = 0
    count = 0
    d=len(str2)-len(str1) 
    while(i < len(str1)):
        if(str1[i] != str2[i]):
            count += 1
        i += 1
    return count+d
 
# Driver code 
str1 = "@maryam"
str2 = "@maryamahmadu108"
 
# function call
print(hammingDist(str1, str2))


# In[ ]:




