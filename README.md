URL::Google::GURL - perl bindings for the google url library
============================================================

This project provides basic perl bindings for some portions of the standards compliant, high performance url parsing library, google-url. This project currently only exposes select portions of the GURL class that is part of this library. This is a convenient high-level abstraction that is useful for decomposing and validating urls.

The google-url project is hosted [here](http://code.google.com/p/google-url/). We have included the necessary source code here for convenient building of the module and will endeavor to keep the sources up to date with the source project.

Basic build instructions
-------------------------

clone the repository and cd to the project directory. Then:

    perl Build.PL
    ./Build
    prove -b -l -v (to run tests)

