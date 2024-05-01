################################
S = readLine()
ok = true
if S[0] != '<':
	ok = false
if S[S.len() - 1] != '>':
	ok = false
for 1..(S.len() - 1) each i:
	if S[i] != '=':
		ok = false
if ok:
	print 'Yes'
else:
	print 'No'
################################
