from hiroyuk1


#################################################
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
#################################################
#################################################
#################################################
#################################################
#################################################
#################################################
//abc308_a
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
#################################################
//abc307_a
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
-- string型の入力
func Sin():
  return string(getInput())
-- number型の入力
func Nin():
  return ston(getInput())
-- number型のlistの入力
func NLin():
  return stoln(getInput())
-- number型のlistの出力
func NLout(a):
  l = a.len()
  for 0..l-1 each i:
    prints '{a[i]} '
  print a[l-1]
n = Nin()
a = NLin()
b = []
for 0..n each i:
  c = 0
  for 0..7 each j:
    c += a[7 * i + j]
  b.append c
NLout(b)
#################################################
//abc306_a
n = int(getInput())
s = getInput()
l = s.len()
for 0..l each i:
  prints s[i]
  prints s[i]
#################################################
