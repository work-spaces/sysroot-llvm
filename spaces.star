"""

"""

prefix = "sysroot"
link_type = "Hard"

macos_x86_64 = {
    "url": "https://github.com/llvm/llvm-project/releases/download/llvmorg-19.1.0/LLVM-19.1.0-macOS-X64.tar.xz",
    "sha256": "264f2f1e8b67f066749349ae8b4943d346cd44e099464164ef21b42a57663540",
    "strip_prefix": "LLVM-19.1.0-macOS-X64",
    "add_prefix": prefix,
    "link": link_type,
}

macos_aarch64 = {
    "url": "https://github.com/llvm/llvm-project/releases/download/llvmorg-19.1.0/LLVM-19.1.0-macOS-ARM64.tar.xz",
    "sha256": "9da86f64a99f5ce9b679caf54e938736ca269c5e069d0c94ad08b995c5f25c16",
    "strip_prefix": "LLVM-19.1.0-macOS-ARM64",
    "add_prefix": prefix,
    "link": link_type,
}

windows_x86_64 = {
    "url": "https://github.com/llvm/llvm-project/releases/download/llvmorg-19.1.0/LLVM-19.1.0-Windows-X64.tar.xz",
    "sha256": "a132377865d72bc7452343d59d05da63266ffc928b4072d63fb854fd42097dc4",
    "strip_prefix": "LLVM-19.1.0-Windows-X64",
    "add_prefix": prefix,
    "link": link_type,
} 

linux_x86_64 = {
    "url": "https://github.com/llvm/llvm-project/releases/download/llvmorg-19.1.0/LLVM-19.1.0-Linux-X64.tar.xz",
    "sha256": "cee77d641690466a193d9b88c89705de1c02bbad46bde6a3b126793c0a0f2923",
    "strip_prefix": "LLVM-19.1.0-Linux-X64",
    "add_prefix": prefix,
    "link": link_type,
}

checkout.add_platform_archive(
    rule = {"name": "llvm_platform_archive"},
    platforms = {
        "macos_x86_64": macos_x86_64,
        "macos_aarch64": macos_aarch64,
        "windows_x86_64": windows_x86_64,
        "linux_x86_64": linux_x86_64,
    },
)
