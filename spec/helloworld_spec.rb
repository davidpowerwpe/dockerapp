require 'helloworld'
RSpec.describe HelloWorld do
  let('hello') { HelloWorld.new }

  describe 'an instanciated hello world' do
      context 'hello method' do
        it 'returns a hello world string' do
          expect(hello.hello).to eq('hello world')
        end
      end

      context 'hellowWithName method' do
        it 'returns a hello world string with given name' do
          expect(hello.helloWithName('James')).to eq('hello world, James')
        end
      end
  end
end
