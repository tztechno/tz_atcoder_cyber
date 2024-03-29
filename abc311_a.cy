####################################
s = getInput()
l = s.len()
a = 0
b = 0
c = 0
for 0..l each i:
  if s[i] == 'A':
    a += 1
  else s[i] == 'B':
    b += 1
  else:
    c += 1
  if a > 0 and b > 0 and c > 0:
    print(i + 1)
    break
####################################
