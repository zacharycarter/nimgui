# nimgui

This started as a fork from [nimgl](https://github.com/lmariscal/nimgl).

I only wanted bindings to [cimgui](https://github.com/cimgui/cimgui), and I found the project's setup to be a bit cumbersome to work with in a nimble environment.

I've renamed the project to try and better reflect its purpose, as well as changed its overall structure to better suit a nimble environment.

The project now has a tools directory, where the code for generating the bindings lives. Once generated, the bindings - which will be named `nimgui.nim` - will be stored in a newly created directory named `src/`, in preparation for `nimble install`.

The resulting `nimgui.nim` file can be installed as a nimble package.

All of this is accomplished via these steps -

```bash
$ git clone --recurse-submodules -j8 https://github.com/zacharycarter/nimgui.git

$ cd nimgui && git submodule update

$ nimble gen
```

Please note that to use the bindings you will need a dll of cimgui, static
linking is still experimental and requires the use of C++. Follow the steps in
[cimgui](https://github.com/cimgui/cimgui) to compile this dll and be sure to use Visual
Studio in Windows and not MinGW.
