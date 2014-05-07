# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  equal_sides = [ (a==b), (b==c), (c==a) ].select { |side| side}

  case equal_sides.size
  when 0 then :scalene
  when 1 then :isosceles
  when 3 then :equilateral
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
