require_relative "00_tree_node.rb"
class KnightPathFinder
    attr_reader :start_pos, :root_node
    def initialize(start_pos)
        @start_pos = Polytreenode.new(start_pos)
        # @root_node = PolyTreeNode.new(start_pos)
    end

    # def build_move_tree(root_node)

    # end
end

p kpf = KnightPathFinder.new([0,0])