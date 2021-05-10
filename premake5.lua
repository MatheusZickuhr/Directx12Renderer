workspace "Directx12Renderer"
    configurations { "Debug", "Release" }
    startproject "Directx12Renderer"

    flags { "MultiProcessorCompile" }

    filter "configurations:Debug"
        defines { "DEBUG", "DEBUG_SHADER" }
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "Speed"
        flags { "LinkTimeOptimization" }


include "Libraries/glfw.lua"
include "Directx12Renderer/Directx12Renderer.lua"