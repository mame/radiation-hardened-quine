tmpl = <<'END'
10210/#{1 1 if 1==21}}/.i rescue##/

1 1"[13,213].max_by{|s|s.size}#"##"
END

data = <<'END'.sub("TMPL", tmpl.chomp)
='eval$q=%q(puts %q(TMPL).gsub(/\d/){["=\47eval$q=%q(#$q)#\47##\47

",:eval,:instance_,"||=9"][eval$&]}
exit)#'##'

END

src = tmpl.gsub(/\d/) { [data,:eval,:instance_,"||=9"][eval$&] }

File.write("rquine.rb", src)
