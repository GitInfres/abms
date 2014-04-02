# tetris_rspec.rb

require './tetris'


describe "#game_state" do
    it "is_start" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]
        
        puts "is_start : "
        puts is_start(tab)
    end
    
    it "is_not_start" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0]]
        
        puts "is_not_start : "
        puts is_not_start(tab)
    end
    
    it "is_end" do
        tab = [
        [0, 1, 1, 1],
        [1, 0, 1, 1],
        [1, 1, 1, 0],
        [1, 1, 0, 1]]
        
        puts "is_end : "
        puts is_end(tab)
    end
    
    
    
    it "is_not_end" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]]
        
        puts "is_not_end : "
        puts is_not_end(tab)
    end
    
    it "line_to_destroy" do
        tab = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 1, 1, 1],
        [1, 1, 1, 0]]
        
        puts "line_to_destroy : "
        puts line_to_destroy(tab)
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
        
        puts "purge_line : "
        puts purge_line(tab, 2).eql?(after)
        
    end
    
end