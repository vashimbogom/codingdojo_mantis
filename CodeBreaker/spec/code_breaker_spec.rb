require 'lib/CodeBreaker'
describe CodeBreaker do
  before (:each) do
		@cb = CodeBreaker.new
	end
	
	it "should return XXXX when number = 2713" do
		code = @cb.guess("2713")
		code.should == "Fecilidades Ganaste! -> XXXX"
	end

  it "should return X when number = 2999" do
		code = @cb.guess("2999")
		code.should == "Vuelve a intentarlo! -> X"
	end

	it "should return _ when number = 9299" do
		code = @cb.guess("9299")
		code.should == "Vuelve a intentarlo! -> _"
	end
	
	it "should return - when number = 9999" do
	  code = @cb.guess("9999")
	  code.should== "Vuelve a intentarlo! -> "
  end

  it "should return - when number = 4569" do
	  code = @cb.guess("4569")
	  code.should== "Vuelve a intentarlo! -> "
  end
  
  it "should return ___ when number = 1234" do
		code = @cb.guess("1234")
		code.should == "Vuelve a intentarlo! -> ___"
	end
	
	it "should return X__ when number = 2431" do
		code = @cb.guess("2431")
		code.should == "Vuelve a intentarlo! -> X__"
	end
	
	it "should return ___ when number = 7531" do
	  code = @cb.guess("7531")
	  code.should== "Vuelve a intentarlo! -> ___"
  end
	
	it "should return X__ when number = 2135" do
	  code = @cb.guess("2135")
	  code.should== "Vuelve a intentarlo! -> X__"
  end

  it "should return XX__ when number = 2317" do
	  code = @cb.guess("2317")
	  code.should== "Vuelve a intentarlo! -> XX__"
  end
  
  it "should return X___ when number = 2371" do
	  code = @cb.guess("2371")
	  code.should== "Vuelve a intentarlo! -> X___"
  end
end