require 'gridder'

RSpec.describe '#gridder' do
	it 'returns 0 for 0x1 grid i.e. no row in grid' do
		expect(gridder(0, 1)).to eq 0
	end

	it 'returns 0 for 1x0 grid i.e. no column in grid' do
		expect(gridder(0, 1)).to eq 0
	end

	it 'returns 1 for 1x1, 2x1 & 1x2 grid' do
		expect(gridder(1, 1)).to eq 1
		expect(gridder(2, 1)).to eq 1
		expect(gridder(1, 2)).to eq 1
	end

	it 'returns 2333606220 for 18x18 grid' do
		expect(gridder(18, 18)).to eq 2333606220
	end
end