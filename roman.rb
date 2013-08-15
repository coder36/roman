class Fixnum
	 
	 $lookup = {
		0 => "",
		1 => "I",
		2 => "II",
		3 => "III",
		4 => "IV",
		5 => "V",
		6 => "VI",
		7 => "VII",
		8 => "VIII",
		9 => "IX",
		10 => "X",
		20 => "XX",
		30 => "XXX",
		40 => "XL",
		50 => "L",
		60 => "LX",
		70 => "LXX",												
		80 => "LXXX",
		90 => "XC",	
		100 => "C",
		200 => "CC",
		300 => "CCC",
		400 => "CD",
		500 => "D",
		600 => "DC",
		700 => "DCC",
		800 => "DCCC",
		900 => "CM",
		1000 => "M",
		2000 => "MM",
		3000 => "MMM"	
	}

	def to_roman
		s = $lookup[( (self/1000) % 10) * 1000 ]
		s = s + $lookup[( (self/100) % 10) * 100 ]
		s = s + $lookup[( (self/10) % 10 ) * 10]	
		s = s + $lookup[self % 10]			
	end
end

class String
	def to_int_from_roman
		(1..3999).map { |n| n.to_roman }.find_index( self ) + 1	
	end
end
