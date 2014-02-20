src = File.read("rquine.rb")

src.size.times do |i|
  File.write("broken.rb", src[0...i] + src[i+1..-1])
  out = `ruby broken.rb`
  if out != src || !$?.success?
    p [:NG, i, $?]
    p out, src
    exit 1
  end
end

p [:success!, src.size]
