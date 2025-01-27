workspace "HelloWorld"
   configurations { "Debug", "Release" }

project "HelloWorld"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "src/**.h", "src/**.cpp", "src/**.hpp", "vendor/include/**.h", "vendor/include/**.hpp" }

   libdirs { "libs", "vendor/libs" }

   

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"