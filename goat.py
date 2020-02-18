import functools
N = [30,26,10,7,5,4]
K = 3

def find_max_2(N):
    capacity = []
    possible = []
    for i in range(0, len(N)):
        possible.append(functools.reduce(lambda a,b: a+b, N[i:]))
        possible.append(functools.reduce(lambda a,b: a+b, N[:i+1]))
        capacity.append(max(possible[:]))
        possible = []
        if i == len(N)-1:
            return min(capacity)

    return min(capacity)

def find_max(N,K):
    capacity = []
    possible = []
    if K==1:
        return find_max_2(N)
    for i in range(0, len(N)):
        possible = []
        possible.append(find_max(N[i:],K-1))
        possible.append(find_max(N[:i+1],K-1))
        capacity.append(max(possible))
        if i == len(N)-1:
            print(capacity)
            return min(capacity)
    return min(capacity)

class Graph:
    def __init__(self, N):
        self.vertice = dict()
        for ver in sorted(N):
            self.add_vertex(ver)
    def add_vertex(self, vertex):
        children = []
        for ver in self.vertice:
            if vertex>ver:
                children.append(ver)
        self.vertice[vertex] = children
    def calculate_capacity(self,trips):
        capacity = 0
        while(True):
            visited = []
            for i in range(0,trips):
                print(sorted(self.vertice.keys(),reverse=True)[i])
                visited = visited + self.find_paths(visited, capacity, 0, sorted(self.vertice.keys(),reverse=True)[i])
            if set(visited).difference(set(self.vertice.keys())):
                return capacity
            capacity = capacity + 1

    def find_paths(self,cur_vis,capacity, current, node):
        cur_vis.append(i)
        current += i
        if(current+i>capacity):
            return cur_vis

        for i in sorted(self.vertice[node],reverse=True):
                        cur_vis + self.find_paths(cur_vis, capacity, current, i)
        return cur_vis

gr = Graph(N)
print(gr.calculate_capacity(K))
