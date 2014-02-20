file "rquine.rb" => "rquine.gen.rb" do
  ruby "rquine.gen.rb"
end

task "test" => "rquine.rb" do
  ruby "test.rb"
end

task "default" => "test"
