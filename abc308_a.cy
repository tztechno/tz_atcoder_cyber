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
s = stoln(getInput())
ok = true
for 0..7 each i:
  if s[i] > s[i + 1]:
    ok = false
for s each i:
  if i % 25 != 0 or i < 100 or 675 < i:
    ok = false
if ok:
  print 'Yes'
else:
  print 'No'
