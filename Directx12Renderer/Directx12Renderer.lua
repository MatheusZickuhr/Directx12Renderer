project "Directx12Renderer"
	kind "ConsoleApp"
    language "C++"
	cppdialect "C++17"
	architecture "x86_64"
	staticruntime "on"
	location "%{wks.location}"
	targetdir "%{wks.location}/bin/%{cfg.buildcfg}"
	objdir "%{wks.location}/obj/%{cfg.buildcfg}"
	
    includedirs { 
		"%{wks.location}/Libraries/glfw/include/",
	}
    
    files { "src/**.cpp", "src/**.h" }

    links { "GLFW" }

    filter "system:linux"
		links { "dl", "pthread" }
		defines { "_X11" }

    filter "system:windows"
        defines { "_WINDOWS" }