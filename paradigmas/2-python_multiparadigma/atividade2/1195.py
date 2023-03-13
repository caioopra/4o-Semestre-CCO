class TreeNode:
    def __init__(self, data):
        self.left = None
        self.right = None
        self.data = data

class Tree:
    def __init__(self):
        self.root = None # TreeNode 

    def insert(self, node, value):
        if node is None:
            self.root = TreeNode(value)
        else:
            if value < node.data:
                if node.left is None:
                    node.left = TreeNode(value)
                else:
                    self.insert(node.left, value)
            else:
                if node.right is None:
                    node.right = TreeNode(value)
                else:
                    self.insert(node.right, value)                
    
    def preorder(self, node):
        if node is not None:
            print(node.data, end=" ")
            self.preorder(node.left)
            self.preorder(node.right)
        
    def inorder(self, node):
        if (node is not None):
            self.inorder(node.left)
            print(node.data, end=" ")
            self.inorder(node.right)
            
    def postorder(self, node):
        if (node is not None):
            self.postorder(node.left)
            self.postorder(node.right)
            print(node.data, end=" ")


cases = int(input())

for i in range(cases):
    node_number = int(input())
    values = [int(x) for x in input().split()]

    tree = Tree()

    for value in values:
        tree.insert(tree.root, value)


    print("Case: ", i+1)
    print("Pre.: ", end="")
    tree.preorder(tree.root)
    print()
    print("In.: ", end="")
    tree.inorder(tree.root)
    print()
    print("Post.: ", end="")
    tree.postorder(tree.root)
    print()
    print()
