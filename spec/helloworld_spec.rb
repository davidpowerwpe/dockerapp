require 'helloworld'
RSpec.describe HelloWorld do
  let('hello') { HelloWorld.new }

  describe 'an instanciated hello world' do
      it 'returns a hello world string' do
        expect(hello.hello).to eq('hello world')
      end

      it 'returns a hello world string' do
        expect(hello.helloWithName('James')).to eq('hello world, James')
      end
  end
end
