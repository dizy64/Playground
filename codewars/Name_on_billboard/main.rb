require '../ruby-test/framework.rb'

def billboard(name, price = 30)
	result = 0; name.length.times { result += price }; result
end


Test.describe("Basic tests") do
	Test.assert_equals(billboard("Jeong-Ho Aristotelis"), 600)
	Test.assert_equals(billboard("Abishai Charalampos"), 570)
	Test.assert_equals(billboard("Idwal Augustin"), 420)
	Test.assert_equals(billboard("Hadufuns John",20), 260)
	Test.assert_equals(billboard("Zoroaster Donnchadh"), 570)
	Test.assert_equals(billboard("Claude Miljenko"), 450)
	Test.assert_equals(billboard("Werner Vigi",15), 165)
	Test.assert_equals(billboard("Anani Fridumar"), 420)
	Test.assert_equals(billboard("Paolo Oli"), 270)
	Test.assert_equals(billboard("Hjalmar Liupold",40), 600)
	Test.assert_equals(billboard("Simon Eadwulf"), 390)
end
