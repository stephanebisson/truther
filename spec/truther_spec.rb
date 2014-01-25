require 'truther'

describe :to_b do

	context 'on string' do

		it 'converts to true' do
			'true'.to_b.should be_true
			'1'.to_b.should be_true
			'yes '.to_b.should be_true
			'Y'.to_b.should be_true
			'oui'.to_b.should be_true
			'vrai'.to_b.should be_true
		end

		it 'converts to false' do
			'false'.to_b.should be_false
			'0'.to_b.should be_false
			' NO '.to_b.should be_false
			'non'.to_b.should be_false
			'faux'.to_b.should be_false
			'n'.to_b.should be_false
		end

		it 'raises error on unrecognized strings' do
			expect {'asdf'.to_b}.to raise_error Truther::NeitherTrueNorFalseError
		end

		it 'returns default on unrecognized strings' do
			'asdf'.to_b(:something_else).should == :something_else
		end

	end

	context 'on nil' do
		it 'converts to false' do
			nil.to_b.should be_false
		end
	end

	context 'on integer' do
		it 'converts to true' do
			1.to_b.should be_true
			99.to_b.should be_true
		end

		it 'converts to false' do
			0.to_b.should be_false
			-7.to_b.should be_false
		end
	end

	context 'on float' do
		it 'converts to true' do
			1.1.to_b.should be_true
			9.9.to_b.should be_true
		end

		it 'converts to false' do
			0.0.to_b.should be_false
			-7.7.to_b.should be_false
		end
	end

	context 'no-op on boolean' do
		it 'converts to true' do
			true.to_b.should be_true
		end

		it 'converts to false' do
			false.to_b.should be_false
		end
	end

end