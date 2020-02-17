import os

def create_folder(foldername):
    os.mkdir("c:\\" + foldername)

def create_sub_folder(subfoldername):
    os.mkdir("c:\\TestingWorldIndia")
    os.mkdir("c:\\TestingWorldIndia\\" + subfoldername)

def concatenate_two_values(val1, val2):
    val3 = val1 + " " + val2
    return val3
