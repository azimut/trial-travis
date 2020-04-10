# trial-travis

[trial](https://github.com/Shirakumo/trial) hello world example build on travis for osx,windows,linux.

## Notes

- `travis setup releases` to get github key
- trial: revert no working commit
- cl-gamepad: cloned from master
- GLFW:
  - macos: brew
  - linux: apt
  - windows: official binaries
- OPENGL:
  - windows: installed opengl32.dll from [mesa-dist-win](https://github.com/pal1000/mesa-dist-win)
  - all: `(deploy:define-library)` to not package it
- ZLIB
  - windows: manual compilation

## See also
* [cepl-travis](https://github.com/azimut/cepl-travis/)

## License

MIT

