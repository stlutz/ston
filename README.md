# STON (Smalltalk Object Notation) for Squeak

<!-- [![Build Status](https://travis-ci.org/svenvc/ston.svg?branch=master)](https://travis-ci.org/svenvc/ston) -->

This is a port of [Sven Van Caekenberghe][svenvc]'s [data interchange format][original repository] to Squeak. Many of the changes are based off of [this PR](https://github.com/svenvc/ston/pull/17). The aim however was to change the original packages as little as possible. All changes necessary to methods in these packages are implemented as extensions in their respective `STON-Squeak-...` package. While this might seem unnecessarily contrived, it allows a very easy and complete overview over these changes.

<!-- links -->
[original repository]: https://github.com/svenvc/ston
[svenvc]: https://github.com/svenvc
