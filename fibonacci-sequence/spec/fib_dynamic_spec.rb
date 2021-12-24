require 'fib_dynamic'

RSpec.describe '#fib' do
	it 'throws a runtime exception for non numerics' do
		expect{fib("true")}.to raise_error(RuntimeError)
		expect{fib("25")}.to raise_error(RuntimeError)
		expect{fib("abc")}.to raise_error(RuntimeError)
		expect{fib("$%$#!")}.to raise_error(RuntimeError)
	end
	
	it 'should return 1 for 1st and 2nd position in fibonacci sequence' do
		expect(fib(1)).to eq 1
		expect(fib(2)).to eq 1
	end

	it 'should return 70492524767089125814114 for 111th position in fibonacci sequence' do
		expect(fib(111)).to eq 70492524767089125814114
	end

	it 'should return 382699285659014174244530850035136059033084785 for 215th position in fibonacci sequence' do
		expect(fib(215)).to eq 382699285659014174244530850035136059033084785
	end


	it 'should return 222232244629420445529739893461909967206666939096499764990979600 for 300th position in fibonacci sequence' do
		expect(fib(300)).to eq 222232244629420445529739893461909967206666939096499764990979600
	end
end