load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtl8821cu_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/realtek-drivers/8821cu:rtl8821cu_srcs"],
        makefile = ["//vendor/amlogic/realtek-drivers/8821cu:Makefile"],
        deps = deps,
        outs = ["8821cu.ko"],
        kernel_build = kernel_build,
    )
