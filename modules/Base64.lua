-- https://devforum.roblox.com/t/quick-simple-base64-module/3026877  (ORIGINAL)

--!native
--A cool funny module made by me (Comet_Quasher) for Base64 encryption and decryption.
--I don't need credit or attribution, anyways have fun with Base64.
--VGhhbmtzIHNvIG11Y2ggZm9yIHVzaW5nIG15IHNjcmlwdHMhISE

local Base64 = {}
local base64Characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local indexTable = {}

--//Prepare index table
for i=1,64 do
	indexTable[i-1]=string.sub(base64Characters,i,i)
end

--[[EXAMPLE
Binary Conversion of 8 to 8-bit-binary
8%2 = 0, 8/2 = 4
4%2 = 0, 4/2 = 4,
2%2 = 0, 2/2 = 1,
1%2 = 1,

1000 (4-bit segment)
Still needs to be a 8-bit segment

8-4 = 4
Which basically means 4 zeros are required to be added to the back of the segment.
00001000 (8-bit segment)
]]
local function ConvertToBinaryBitString(number:number,length:number)
	--//Convert the number to a binary bit string using modulo
	local binaryString = ""
	while number > 0 do
		binaryString=(number%2)..binaryString
		number=math.floor(number/2)
	end
	--//Ensures the binary bit string is of appropriate length by adding necessary zeros at the back
	binaryString=string.rep("0",length-#binaryString)..binaryString
	return binaryString
end

local function ConvertBinaryBitToNumber(bit:string)
	local number=0
	local length=#bit
	for i=1,length do
		if bit:sub(i, i) == "1" then
			number += 2^(length-i)
		end
	end
	return number
end


function Base64.Encode(data:string):string?
	--//Convert characters to 8-bit segments
	local bitStream=""
	for i = 1, #data do
		local charByte = data:byte(i)
		bitStream..=ConvertToBinaryBitString(charByte,8)
	end
	
	
	--//Add padding to ensure it is a multiple of 6 so we can split it into 6-bit segments
	local Padding = (6 - #bitStream % 6) % 6
	bitStream..=string.rep("0",Padding)
	
	
	--//Convert 6-bit segments to Base64
	local encodedData = ""
	for i = 1, #bitStream, 6 do
		local segment = bitStream:sub(i,i+5)
		local index = tonumber(segment,2)
		encodedData..=indexTable[index]
	end
	
	
	--//Add padding for missing bits to ensure encodedString is a multiple of 4
	Padding = (4 - #encodedData % 4) % 4
	encodedData..=string.rep("=",Padding)
	
	--//Clear variables
	bitStream,Padding=nil,nil
	return encodedData
end
function Base64.Decode(encodedData:string):string?
	--//Calculate padding bits to be added to ensure a multiple of 8
	local paddingBits=0
	for i = #encodedData, (#encodedData-1), -1 do
		if encodedData:sub(i,i) == "=" then
			paddingBits+=1
		else
			break
		end
	end
	
	--//Since we have no use for padding anymore we will simply remove them for now
	encodedData=string.sub(encodedData,1,#encodedData-paddingBits)
	
	--//Convert Base64 back to 6-bit segments
	local bitStream = ""
	for i=1,#encodedData do
		local character = string.sub(encodedData,i,i)
		local index = table.find(indexTable,character)
		local segment = ConvertToBinaryBitString(index,6)
		bitStream..=segment
	end
	
	--//Add padding bits calculated previously to ensure a multiple of 8
	bitStream..=string.rep("0",paddingBits)
	
	--//Convert 8-bit segments to characters
	local decodedData = ""
	for i = 1, #bitStream, 8 do
		local segment = bitStream:sub(i,i+7)
		local charByte = ConvertBinaryBitToNumber(segment)
		decodedData..=string.char(charByte)
	end
	return decodedData
end
return Base64
