# sysroot-llvm

To use llvm in your workspace:

```starlark
"""
This is the command to bring llvm into your workspace
"""

checkout.add_repo(
    rule = {"name": "tools/sysroot-llvm" },
    repo = {
        "url": "https://github.com/work-spaces/sysroot-llvm",
        "rev": "v19",
        "checkout": "Revision"
    }
)

```

You can set `rev` to any available branch, tag or commit.
