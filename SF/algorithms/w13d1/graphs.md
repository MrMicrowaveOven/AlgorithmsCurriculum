## Summary

* Graphs
    * Different versions of time complexity
    * Topological Sort
    * BFS shortest paths
    * Dijkstra's Algorithm
        * Explain Dijkstra as a growing civilization. Always annex the
          place closest to your capital.
        * There's like a "fog of war" type thing where you can't see
          stuff except on the frontier of your civilization.
        * Imagine some mountains between you and stuff across your
          border.
    * Prim's Algorithm
    * Floyd-Warshall Algorithm

## Graph Definition

```ruby
class Vertex
  attr_accessor :value, :edges
end

class Edge
  attr_accessor :vertex1, :vertex2, :cost

  def other_vertex(vertex)
    if vertex == self.vertex1
      self.vertex2
    elsif vertex == self.vertex2
      self.vertex1
    else
      raise "WTF"
    end
  end
end
```

## Dijkstra's Algorithm

```ruby
# Worst
def shortest_paths(vertices, start_vertex)
  paths = {
    start_vertex => { :prev_edge => nil, :total_cost => 0 }
  }

  while true
    extension = {
      :edge => nil,
      :total_cost => Float::Infinity,
      :prev_vertex => nil
    }

    min_cost = Float::Infinity
    min_cost_edge = nil

    # find the minimum cost extension of the current paths.
    paths.keys.each do |vertex|
      vertex.edges.each do |edge|
        next_vertex =
          (edge.vertex1 == vertex) ? edge.vertex2 : edge.vertex1

        # Only consider edges to new parts of the graph.
        next if paths.include?(next_vertex)

        total_cost = path[next_vertex][:total_cost] + edge.cost
        if total_cost < extension[:total_cost]
          extension = {
            :edge => edge,
            :total_cost => total_cost,
            :prev_vertex => vertex
          }
        end
      end
    end

    # stop when there are no edges into new parts of the graph
    break if extension[:edge].nil?

    paths[extension[:vertex]] = {
      :prev_edge => extension[:edge],
      :total_cost => extension[:total_cost]
  end

  paths
end
```

```ruby
# Better
def shortest_paths(vertices, start_vertex)
  final_paths = {}

  possible_paths = {
    start_vertex => { :prev_edge => nil, :total_cost => 0 }
  }

  while true
    min_vertex, min_data =
      possible_paths.min_by { |_, v| v[:total_cost] }

    if min_vertex.nil?
      # no where new left to go
      break
    end

    final_paths[min_vertex] = min_data
    possible_paths.delete(min_vertex)

    min_vertex.edges.each do |e|
      next_vertex = (e.vertex1 == min_vertex) ? e.vertex2 : e.vertex1
      next_cost = min_data[:total_cost] + e.cost

      next_data = possible_paths[:next_vertex]

      unless next_data && next_data[:total_cost] < next_cost
        # found a better path to next_vertex
        possible_paths[next_vertex] = {
          :prev_edge => e,
          :total_cost => next_cost
        }
      end
    end
  end

  final_paths
end
```

We loop around the `while` loop up to `V` times. In the loop we:

* Find the lowest cost node to move to (there are up to `V` vertices
  to chose from).
* Consider all the outgoing edges from the chosen vertex. Note that if
  we consider every vertex, every edge will be considered twice. So
  this is `O(E)` time added up across the outer `while` loop.

So the running time is: `O(|E| + |V|**2)`. We could try to improve
this by using a binary heap. Imagine replacing `possible_paths` with a
heap instead of a hash:

```ruby
class Path
  attr_reader :prev_edge, :total_cost, :final_vertex

  def initialize(prev_edge, total_cost, final_vertex)
    @prev_edge, @total_cost, @final_vertex
      = prev_edge, total_cost, final_vertex
  end
end

def shortest_paths(vertices, start_vertex)
  final_paths = {}

  possible_paths = MinHeap.new(&:total_cost)
  possible_paths << Path.new(nil, 0, start_vertex)

  while true
    min_path = possible_paths.extract

    # considered all paths
    break if min_path.nil?
    # already have better path to this vertex
    next if final_paths.include?(min_path.final_vertex)

    final_paths[min_path.final_vertex]
      = min_path

    min_path.final_vertex.edges.each do |e|
      next_vertex =
        (e.vertex1 == min_path.final_vertex) ? e.vertex2 : e.vertex1
      next_cost = min_path.total_cost + e.cost

      possible_paths << Path.new(e, next_cost, next_vertex)
    end
  end

  final_paths
end
```

The outer loop still iterates up to `V` times. Extracting the min
takes `O(log(V))` time. Again, we must perform the inner
`min_path.final_vertex.edges.each` a total of up to `2 * E`
times. This loop is now more expensive: it takes `O(log(E)` time for
each iteration.

The trick is tracking where a vertex is in the heap. We need it not to
grow to size `E`...
