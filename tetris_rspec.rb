# tetris_rspec.rb

require './tetris'


describe "#game_state" do
    it "is_start" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]
        
        is_start(tab).should eq(true)
    end
    
    it "is_not_start" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0]]
        
        is_not_start(tab).should eq(true)
    end
    
    it "is_end" do
        tab = [
        [0, 1, 1, 1],
        [1, 0, 1, 1],
        [1, 1, 1, 0],
        [1, 1, 0, 1]]
        
        is_end(tab).should eq(true)
    end
    
    
    
    it "is_not_end" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]
        
        is_not_end(tab).should eq(true)
    end
    
    it "line_to_destroy" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 1, 1, 1],
        [1, 1, 1, 0]]
        
        line_to_destroy(tab).should eq(true)
    end
    
    it "purge_line" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 1, 1, 1],
        [1, 1, 1, 0]]
        
        after = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 1, 1, 0]]
        
        purge_line(tab, 2).should eq(after)
        
    end
    
end
