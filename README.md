# Qmakelib

Qmakelib is a library for Qmake. Qmake is a tool for build Qt projects.

## Dependencies

Qt 4 or Qt 5.

## Getting 

    git clone https://github.com/bravikov/qmakelib.git

## Using

Include qmakelib.pri file in your .pro file:

    include(qmakelib/qmakelib.pri)

Invoke test functions you need:

    qtVersionLessThan(5, 0, 0) {
        message("Qt 4")
    }
    else {
        message("Qt 5")
    }

## Test Functions

### Checking of the Qt version

 * qtVersionEqualTo(x, y, z)
 * qtVersionLessThan(x, y, z)
 * qtVersionLessThanOrEqualTo(x, y, z)
 * qtVersionGreaterThan(x, y, z)
 * qtVersionGreaterThanOrEqualTo(x, y, z)

where

 * x is a major version,
 * y is a minor version,
 * z is a patch version.

## Library Test

To test the library run:

    qmake qmakelib/test/qmakelib_test.pro
