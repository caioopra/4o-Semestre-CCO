class Tree:
    def __init__(self, value=None):
        self.left = None
        self.right = None
        self.value = value

    def insert(self, value):
        if self.value is None:
            self.value = value
            return

        if value <= self.value:
            if self.left is None:
                self.left = Tree(value)
            else:
                self.left.insert(value)
        else:
            if self.right is None:
                self.right = Tree(value)
            else:
                self.right.insert(value)

    def preOrder(self, res=None):
        if res is None:
            res = []

        res.append(self.value)
        if self.left is not None:
            self.left.preOrder(res)
        if self.right is not None:
            self.right.preOrder(res)
        return res

    def inOrder(self, res=None):
        if res is None:
            res = []

        if self.left is not None:
            self.left.inOrder(res)
        res.append(self.value)
        if self.right is not None:
            self.right.inOrder(res)

        return res

    def postOrder(self, res=None):
        if res is None:
            res = []

        if self.left is not None:
            self.left.postOrder(res)
        if self.right is not None:
            self.right.postOrder(res)
        res.append(self.value)

        return res


def result(result, label):
    values = " ".join(map(str, result))
    return f"{label}: {values}"


n = int(input())
for i in range(n):
    c = int(input())
    values = [int(x) for x in input().split()]

    print(f"Case {i+1}: ")

    tree = Tree()
    for value in values:
        tree.insert(value)

    print(result(tree.preOrder(), "Pre."))
    print(result(tree.inOrder(), "In."))
    print(result(tree.postOrder(), "Post"))
    print()
