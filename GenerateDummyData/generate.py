import sys
import csv
import os
from faker import Faker
from multiprocessing import Process


def generate_dummy(num, startIndex, endIndex):
    fake = Faker()
    fileName = str(num)+".txt"
    fd = open(fileName, "w")
    wr = csv.writer(fd)

    for i in range(startIndex, endIndex):
        rawname = fake.name()
        address = fake.address()
        ip = fake.ipv4_private()
        # sentence=fake.sentence();
        namelist = rawname.split()
        firstname = namelist[0]
        lastname = namelist[1]
        # fullname=firstname+lastname;
        # wr.writerow([i,fullname,firstname,lastname,ip,sentence,i,fullname,firstname,lastname,ip,sentence,i,fullname,firstname,lastname,ip,sentence,i,fullname,firstname,lastname,ip,sentence]);
        wr.writerow([i, firstname, lastname, ip, i, i, i,
                     i, i, i, i, i, i, i, i, i, i, i, i])

    num += 1
    fd.close


if __name__ == '__main__':
    totalRowNum = int(sys.argv[1])
    cpuCount = os.cpu_count()
    nums = range(0, cpuCount)
   # totalRowNum=40000000;
    # totalRowNum=40000;
    rowNumForEachFile = int(totalRowNum/cpuCount)
    startIndexArray = []
    endIndexArray = []
    # print(rowNumForEachFile);

    for i in range(0, cpuCount):
        startVal = i*rowNumForEachFile
        endVal = (i+1)*rowNumForEachFile
        startIndexArray.append(startVal)
        endIndexArray.append(endVal)
        print(startIndexArray[i], endIndexArray[i])

    procs = []

    for idx, num in enumerate(nums):
        proc = Process(target=generate_dummy, args=(
            num, startIndexArray[num], endIndexArray[num]))
        procs.append(proc)
        proc.start()

    for proc in procs:
        proc.join()
