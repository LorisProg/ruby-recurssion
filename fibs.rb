
def fibs(n)
	list = []
	(0..n-1).each do |n|
		list[n] = (n <= 1) ? n : list[n-1] + list[n-2]
	end
	list
end	

def fibs_rec(n)
	list = []
	return list if n == 0
	list = (n<=2) ? fibs_rec(n-1) << n-1 : fibs_rec(n-1) << fibs_rec(n-1)[n-2] + fibs_rec(n-1)[n-3]
end
