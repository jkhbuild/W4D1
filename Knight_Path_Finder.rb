require_relative "00_tree_node.rb"
require "byebug"
class KnightPathFinder
    def self.valid_moves(pos)
        valids = [[1,2], [2,1], [-1,2], [-2,1], [1,-2], [2,-1], [-1,-2], [-2,-1]]
        moves = []
        valids.each do |valid_pos|
            moves << [(pos[0]+valid_pos[0]),(pos[1]+valid_pos[1])]
        end
        moves.select! do |move|
            ((move[0] < 8) && (move[0] >= 0)) && ((move[1] < 8) && (move[1] >= 0))

        end
        moves

    end

    attr_reader :start_pos, :root_node

    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos]
    end
end

kpf = KnightPathFinder.new([0,0])
p kpf

p KnightPathFinder.valid_moves([3,4])