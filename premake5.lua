project "Box2D"
kind "StaticLib"
language "C++"
cppdialect "C++11"
staticruntime "off"

targetdir("bin/" .. outputdir .. "/{prj.name}")
objdir("bin-int/" .. outputdir .. "/{prj.name}")

files
{
    "src/**.h",
    "src/**.cpp",
    "include/**.h",
}

includedirs
{
    "include",
    "src",
}

filter("system:linux")
pic("On")
systemversion("latest")

filter("system:macosx")
pic("On")

filter("system:windows")
systemversion("latest")

filter("configurations:Debug")
runtime("Debug")
symbols("on")

filter("configurations:Release")
runtime("Release")
optimize("speed")

filter("configurations:Dist")
runtime("Release")
optimize("speed")
symbols("off")
