here = File.expand_path(File.dirname(__FILE__))
require "#{here}/spec_helper" #add this to execute tests from the spec directory
require 'cmock_file_writer'

describe CMockFileWriter do 
	before do
		@cmConfig = Object.new
		#create instance of class under test
		@subject = CMockFileWriter.new(@cmConfig)
	end

	describe 'initialize' do 
		it "have set up internal accessors correctly on init" do 
			result = @subject.config
			result.should == @cmConfig
		end
	end

	describe 'create_file' do
		it "complain if a block was not specified when calling create" do 
			expect {@subject.create_file("text.txt")}.should raise_error
			# should.be_false
		end
	end
end