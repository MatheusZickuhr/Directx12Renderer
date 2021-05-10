#pragma comment(lib,"d3dcompiler.lib")
#pragma comment(lib, "D3D12.lib")
#pragma comment(lib, "dxgi.lib")

#include <glfw/glfw3.h>
#define GLFW_EXPOSE_NATIVE_WIN32
#include <glfw/glfw3native.h>
#include <iostream>

#include "D3D12HelloTriangle.h"

int main() {

    const int width = 800, height = 600;

    glfwInit();
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

    auto window = glfwCreateWindow(width, height, "Directx12Renderer", nullptr, nullptr);

    if (!window) {
        std::cout << "Failed to create window" << std::endl;
        return -1;
    }

    auto hMainWnd = glfwGetWin32Window(window);

    D3D12HelloTriangle sample(hMainWnd, width, height, L"D3D12 Hello Triangle");

    sample.OnInit();

    while (!glfwWindowShouldClose(window)) {

        sample.OnUpdate();
        sample.OnRender();

        glfwPollEvents();
    }

    sample.OnDestroy();
    glfwTerminate();

    return 0;
}

