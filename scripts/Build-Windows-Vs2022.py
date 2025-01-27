import os


fullPath = os.path.dirname(os.path.abspath(__file__))


print(f"Current full path: {fullPath}")


splitPath = fullPath.split("\\")

if splitPath[-1] == "scripts":
    print("Going into parent directory...")
    parentPath = os.path.abspath("..") 
    os.chdir(parentPath)  


print(f"Updated working directory: {os.getcwd()}")

vendorPath = os.path.join(os.getcwd(), "vendor", "premake5", "premake5")
os.system(f'"{vendorPath}" vs2022') 
