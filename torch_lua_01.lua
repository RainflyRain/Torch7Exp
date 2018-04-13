

-- 按照条件遍历指定目录到文件
-- for fname in paths.files('./',function(file) return file:find('.lua') end) do
-- 	print(fname)
-- end

print('------------ String cut ------------')
string1 = 'this is beautiful view'
fname = string.sub(string1,1,-5)
print(fname)
fname = string.sub(string1,1,7)
print(fname)


print('--------- Strings numbers tables------------')
a = 'hello'
print(a)

b = {}
b[1] = a
print(b)

b[2] = 30
print(b)

for i = 1,#b do
	print(b[i])
end


print('-------------Tensors---------------')
a = torch.Tensor(5,3)
print(a)

a = torch.rand(5,3)
print(a)

b = torch.rand(3,4)
print(b)

c = a*b
print(c)
c = torch.mm(a,b)
print(c)
c = torch.Tensor(5,4)
c:mm(a,b)
print(c)

print('---------------cuda Tensors,mac not support cuda----------------')
-- require 'cutorch'

-- a = a:cuda()
-- b = b:cuda()
-- c = c:cuda()
-- c:mm(a,b)
print("...")

print('---------------function----------------')
function addTensors( a,b )
	return a 
end

a = torch.ones(5,2)
-- b = torch.Tensor(2,5):file(4)
b = torch.Tensor(2,5)
print(addTensors(a,b))


print('----------------neural networks-----------------')
require 'nn';

x = torch.Tensor(3,4,2,5)
print(x)
print(x:size())
y = x:permute(2,3,1,4) -- 按照2,3,1,4维进行重排列。
print(y)


