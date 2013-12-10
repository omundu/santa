require 'spec_helper'

describe Santa::Base do
  it "returns a purpose" do
    Santa::Base.purpose.should eql("To make it simple for a group of friends or a find quickly create (hopefully) stress free Secret Santa assignments")
  
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
      
    end
    
  end
end