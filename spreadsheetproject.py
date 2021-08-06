name="Adegite Adejuwon"
email="adegiteadejuwon@gmail.com"
slackusername="@AAdejuwon"
biostack="Genomics"
twitterhandle="@A_Adegite"
print(name)
print(email)
print(slackusername)
print(biostack)
print(twitterhandle)

slackusername = "@AAdejuwon"
twitterhandle = "@A_Adegite"
def h_d_loop(str_1, str_2):
    h_distance = 0
    for position in range(len(slackusername)):
        if slackusername[position] != twitterhandle[position]:
            h_distance += 1
    return h_distance
    
print("Hamming Distance: ", end='')
print(h_d_loop(slackusername, twitterhandle))
