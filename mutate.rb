src = ARGF.read
src[rand(src.size), 1] = ""
print src
