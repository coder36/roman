require './roman'

describe "roman" do 
		
	describe "FixNum modifications" do 
		before( :all ) do 
			@i = 10
		end

		subject { @i }
		it {should respond_to :to_roman}
	end

	describe "String modifications" do 
		before( :all ) do 
			@i = 'X'
		end

		subject { @i }
		it {should respond_to :to_int_from_roman}
	end


	it "converts 1 to 9" do 
		1.to_roman.should match ( 'I' ) 
		2.to_roman.should match ( 'II' )
		3.to_roman.should match ( 'III' )
		4.to_roman.should match ( 'IV' )
		5.to_roman.should match ( 'V' )
		6.to_roman.should match ( 'VI' )		
		7.to_roman.should match ( 'VII' )		
		8.to_roman.should match ( 'VIII' )		
		9.to_roman.should match ( 'IX' )		
	end

	it "converts 10 to 90" do 
		10.to_roman.should match ( 'X' )
		20.to_roman.should match ( 'XX' )
		30.to_roman.should match ( 'XXX' )
		40.to_roman.should match ( 'XL' )
		50.to_roman.should match ( 'L' )
		60.to_roman.should match ( 'LX' )		
		70.to_roman.should match ( 'LXX' )		
		80.to_roman.should match ( 'LXXX' )		
		90.to_roman.should match ( 'XC' )		
		11.to_roman.should match ( 'XI' )
		19.to_roman.should match ( 'XIX' )
		91.to_roman.should match ( 'XCI' )
		99.to_roman.should match ( 'XCIX' )
	end

	it "converts 100 to 900" do 
		100.to_roman.should match ( 'C' )
		200.to_roman.should match ( 'CC' )
		300.to_roman.should match ( 'CCC' )
		400.to_roman.should match ( 'CD' )
		500.to_roman.should match ( 'D' )
		600.to_roman.should match ( 'DC' )		
		700.to_roman.should match ( 'DCC' )		
		800.to_roman.should match ( 'DCCC' )		
		900.to_roman.should match ( 'CM' )		
		101.to_roman.should match ( 'CI' )
		109.to_roman.should match ( 'CIX' )
		991.to_roman.should match ( 'CMXCI' )
		999.to_roman.should match ( 'CMXCIX' )
	end

	it "converts 1000 to 3999" do 
		1000.to_roman.should match ( 'M' )
		2000.to_roman.should match ( 'MM' )
		3000.to_roman.should match ( 'MMM' )
		3999.to_roman.should match ( 'MMMCMXCIX' )
	end



	it "converts from roman numerals to integers" do 
		'CMXCIX'.to_int_from_roman.should eql 999 
		'CMXCI'.to_int_from_roman.should eql 991 
	end
end	