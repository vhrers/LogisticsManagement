




local time1 = os.time()
local time2 = os.time() + (3600 * 24) - 1
local date1 = os.date('*t',time1)


print("time1 is",date1.day)
print("time1 is",date1.hour)
print("time2 is ",time2)

local diff = os.difftime(time2,time1)
print("diff is ",diff)
local diff2 = time2 - time1

date = os.date('*t', diff)
local day = date.day
print("day is ",day)
print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`")

local date = os.date('*t', diff2)
print("diff2 is ", diff2)
print("diff day is ",date.day)
print("diff hour is  ",date.hour)
print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")