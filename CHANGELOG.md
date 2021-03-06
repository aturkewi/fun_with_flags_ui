# Changelog

## v0.4.1

* Remove compile-time call to `Application.ensure_started` that was causing noisy warning during compilation. [pull/2](https://github.com/tompave/fun_with_flags_ui/pull/2)

## v0.4.0

* Require `fun_with_flags 1.0.0`.
* Add support for clearing boolean gates and display when a boolan gate is missing.
* Add support for the percentage gates: `percentage_of_time` and `percentage_of_actors`.

## v0.3.0

* Update `fun_with_flags` to `0.10`, which allows binary group names.
* Stop converting submitted group names to atoms.

## v0.2.0

* Updated dependencies.

## v0.1.0

* Visiting the details page for a non-exising flag will now render a 404 page, rather than displaying the details page with the flag disabled.
* Fixed an issue where atoms where being dynamically created when requesting the details page for non existing flags.
* Updated `fun_with_flags` dependency.

## v0.0.3

* Added interface to cleanly run standalone.
* Fixed some configuration issues.
* Added tests and documentation.

## v0.0.2

The library can now be mounted into a host application, for example a Phoenix app or another Plug app.

## v0.0.1

Unstable release.
The core functionality is working and it can run standalone.
