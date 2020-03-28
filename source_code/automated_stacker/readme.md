# Description
    This tool is for people who wants to enable people who does not have openscad.
    Some folk with 3D printers may want to print different numbers of copies without the hassle of 
    touching .scad files.
# Requirements:
- The stacker.scad should have a variable named N_COPIES that defines the number of copies.
- Openscad file need to be in the same directory as the makefile.
- Openscad file needs to correctly reference the path to the stl file.
- The folder structured would look something like:

    ├── 3dverkstan_stacker.scad

    ├── makefile

    ├── readme.md

    └── Visor_frame_EUROPE_ISO838_v3.stl

- A folder named 'nameofmystacker_stls' will be created to store the generated stl files.

example of usage to generate stl files with 1 to 20 stacked visors:

    make stacker=stack_model.scad N_COPIES=20



