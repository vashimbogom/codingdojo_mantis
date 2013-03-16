class RomannConverter    
    @@dic = { 0=>{1=>"I",5=>"V",0=>"X"}, 1=>{1=>"X",5=>"L",0=>"C"}, 2=>{1=>"C",5=>"D",0=>"M"}, 3=>{1=>"M"} }
	def convert(num) i,f,roman = -1, 1, ""
        begin
            roman, num, f = getRoman(n=((num % (f*10)) / f), i+=1) + roman, num-n*f, f*=10
        end until num == 0
        return roman end
    def getRoman(n, i) (n < 4) ? (@@dic[i][1] * n) : ((n == 4)?(@@dic[i][1] + @@dic[i][5]):((n == 5)?(@@dic[i][5]):((n < 9)?(@@dic[i][5] + ( @@dic[i][1] * (n - 5))):(@@dic[i][1] + @@dic[i][0])))) end end