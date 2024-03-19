-- string型をnumber型に変換。
func ston(s):
  l = s.len()
  n = 0
  for 0..l each i:
    n = n * 10 + number(s[i])
  return n
-- string型をnumber型のlistに変換。
func stoln(s):
  a = []
  for s.split(' ') each i:
    a.append ston(i)
  return a
a = getInput().split(' ')
n = ston(a[0])
p = ston(a[1])
q = ston(a[2])
d = stoln(getInput())
m = 100000
for d each i:
  if i < m:
    m = i
ans = q + m
if p < ans:
  ans = p
print ans
