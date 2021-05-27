import os


with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\black'):
       for filename in files:
         f = os.path.join(path, filename+" 0")
         a.write(str(f) + os.linesep)

with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\blue'):
       for filename in files:
         f = os.path.join(path, filename+" 1")
         a.write(str(f) + os.linesep)

with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\green'):
       for filename in files:
         f = os.path.join(path, filename+" 2")
         a.write(str(f) + os.linesep)

with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\orange'):
       for filename in files:
         f = os.path.join(path, filename+" 3")
         a.write(str(f) + os.linesep)

		 
with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\purple'):
       for filename in files:
         f = os.path.join(path, filename+" 4")
         a.write(str(f) + os.linesep)


with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\red'):
       for filename in files:
         f = os.path.join(path, filename+" 5")
         a.write(str(f) + os.linesep)

with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\white'):
       for filename in files:
         f = os.path.join(path, filename+" 6")
         a.write(str(f) + os.linesep)

with open("images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\yellow'):
       for filename in files:
         f = os.path.join(path, filename+" 7")
         a.write(str(f) + os.linesep)


with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\black_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\blue_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\green_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\orange_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

		 
with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\purple_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)


with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\red_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\white_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)

with open("m_images.txt", "a") as a:
    for path, subdirs, files in os.walk(r'C:\Users\asus\Desktop\resimler_b\yellow_m'):
       for filename in files:
         f = os.path.join(path, filename)
         a.write(str(f) + os.linesep)		 