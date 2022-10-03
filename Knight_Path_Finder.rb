require_relative "00_tree_node.rb"
class KnightPathFinder
    self.valid_moves(pos)
        moves = []

        moves
    end
    attr_reader :start_pos, :root_node
    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos]
    end

    # def build_move_tree(root_node)

    # end
end

kpf = KnightPathFinder.new([0,0])
p kpf