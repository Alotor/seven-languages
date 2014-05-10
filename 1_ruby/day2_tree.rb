# The Tree class was interesting, but it did not allow you to specify a new tree with a clean user
# interface. Let the initializer accept a nested structure with hashes and arrays. You should be
# able to specify a tree like this:
# { 'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} ", 'uncle' => { 'child 3' => {}, 'child 4' => {} }}}}

class Tree
    attr_accessor :children, :node_name

    def initialize (structure={})
        @node_name = structure.keys[0]
        @children = []
        structure[@node_name].each_pair { |key,val|
            @children << Tree.new({ key => val })
        }
    end

    def visit_all(&block)
        visit &block
        children.each { |c| c.visit_all &block }
    end

    def visit(&block)
        block.call self
    end

    def to_s()
        "#{@node_name} => {#{@children.join(',')}}"
    end
end
