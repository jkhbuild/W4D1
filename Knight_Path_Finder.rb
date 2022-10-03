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

    def new_move_positions(pos)
        new_moves = []
        KnightPathFinder.valid_moves(pos).select do |move|
            if !@considered_positions.include?(move)
                new_moves << move
            end
        end

        @considered_positions += new_moves
        return new_moves
    end

    def build_move_tree(start_pos)
        queue = [self.root_node]
        until queue.empty?
            position = queue.shift

            position.new_move_positions(end_pos).each do |new_move|
                queue << PolyTreeNode.new(new_move).root_node
            end
            # queue += position.new_move_positions(position.root_node)


        end
    end


end

kpf = KnightPathFinder.new([0,0])
kpf

KnightPathFinder.valid_moves([3,4])
p kpf.new_move_positions([3,4])