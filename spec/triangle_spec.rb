require('rspec')
require('triangle')
describe('#Triangle') do
  it('return true if all sides are equal to eachother') do
    triangle = Triangle.new(1,1,1)
    expect(triangle.equilateral?).to(eq(true))
  end

  it('return true if exactly two sides are equal') do
    triangle = Triangle.new(1,1,2)
    expect(triangle.isosceles?).to(eq(true))
  end

  it('return true if no sides are equal') do
    triangle = Triangle.new(1,2,3)
    expect(triangle.scalene?).to(eq(true))
  end

  it('return true if values given do not make a triangle') do
    triangle = Triangle.new(15,1,2)
    expect(triangle.not_triangle?).to(eq(true))
  end
end
