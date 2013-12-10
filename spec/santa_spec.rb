require 'spec_helper'

describe Santa::Base do
  
  describe '#new' do
    
    it 'initializes without issue' do
      Santa::Base.new('a').should be_an_instance_of Santa::Base
    end
    
    context 'handle varying input' do
      it 'correctly initializes single character input' do
        expect(Santa::Base.new('a').participants).to eql(['a'])
      end
      
      it 'correctly initializes multiple arguemnets' do
        expect(Santa::Base.new('a', 'b', 'c', 'd').participants).to eql(['a', 'b', 'c', 'd'])
      end
      
      it 'correctly initializes numerical inputs' do
        expect(Santa::Base.new(1, 2, 3, 4).participants).to eql([1, 2, 3, 4])
      end
      
      it 'correctly initializes single array inputs' do
        pending "Need to decide how I want to handle arrays"
        expect(Santa::Base.new(['a']).participants).to eql(['a'])
      end
      
      it 'correctly initializes multi array inputs' do
        pending "Need to decide how I want to handle arrays"
        expect(Santa::Base.new(['a', 'b', 'c', 'd']).participants).to eql(['a', 'b', 'c', 'd'])
      end
      
      it 'correctly initializes hash inputs' do
        pending "Need to decide how I want to handle hashes"
        expect(Santa::Base.new({'a' => 1, 'b' => 2, 'c' => 3}).participants).to eql([['a', 1], ['b', 2], ['c', 3]])
      end
    end
    
  end
end