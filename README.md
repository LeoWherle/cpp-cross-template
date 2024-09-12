
# Goal of this repository

The goal of this repository was to provide a simple template to create c++ projects with cmake. The dependencies have to be installed from Nix. It is destined to be used for the R-Type project.

# Dependencies
Tested with:
nix (Nix) 2.24.6

# Commands

```bash
nix run
nix develop
nix build
```

# Current status:

- [x] Create a basic project with cmake & raylib
- [x] Build the project with nix
- [ ] Run the project with nix (the executable is not working)
- [ ] Test if the cross-compilation is working on all supported platforms
- [ ] Add a CI/CD pipeline
- [ ] Add a code coverage tool
- [ ] Make debugging easier
