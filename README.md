# Booksquisher: A Containerized Book Creation System

Start with the [Booksquisher User's Guide](https://www.booksquisher.com/)

Booksquisher is a multi-format book creation system based on [Asciidoctor](https://asciidoctor.org/) and the build scripts used to generate the open source book *[Pro Git 2](https://git-scm.com/book/en/v2)*. Booksquisher consists of [this Docker image](https://hub.docker.com/r/marmor/booksquisher) containing all the tools, [example book templates](https://github.com/mmarmor/booksquisher-example-book-templates) located on GitHub, and the [Booksquisher User's Guide](https://www.booksquisher.com/) located at www.booksquisher.com.

## Quick Overview

If you are looking for a well-designed system for writing books in one master format and allowing the computer to generate great looking, ready-to-publish versions in EPUB3, Kindle (KF8/MOBI), PDF, and HTML5, this Docker image is for you. Don't "roll your own" book building system. Use the same open source system that super-smart people have already battle-tested in the real world.

This Docker image was originally created to provide a ready-to-run toolchain for building the open source book *Pro Git, 2nd Edition*. You can still use it for making the *Pro Git 2* book. That said, you can also use this Docker image and associated example book templates to create *your own* books based on the same fantastic technology stack and build approach as *Pro Git 2*.

The Booksquisher Example Book Templates are simplifications of the same markup language, book structure, and build system used by the *Pro Git 2* book. (Except they are only a few pages long instead of 500+ pages, so they are way easier to figure out when you are getting started!)

The Booksquisher User's Guide at www.booksquisher.com explains step-by-step how to use the tools in the Booksquisher Docker image to generate finished books from the Booksquisher Example Book Templates, as well as the *Pro Git 2* book source code.

**Important Booksquisher Links:**

* START HERE: [Booksquisher User's Guide](https://www.booksquisher.com/)
* [Booksquisher Example Book Templates on GitHub](https://github.com/mmarmor/booksquisher-example-book-templates)
* [Booksquisher Docker image on Docker Hub: marmor/booksquisher](https://hub.docker.com/r/marmor/booksquisher)

**Other Key Links:**

* [Pro Git 2 Book Source on GitHub](https://github.com/progit/progit2.git) (and the ready to read [online version](https://git-scm.com/book/en/v2))
* [AsciiDoc Writers Guide](https://asciidoctor.org/docs/asciidoc-writers-guide/)
* [Asciidoctor User Manual](https://asciidoctor.org/docs/user-manual/)
* Booksquisher uses [asciidoctor/docker-asciidoctor](https://github.com/asciidoctor/docker-asciidoctor) as a parent Docker image
* [Booksquisher Dockerfile on GitHub used to create the Booksquisher Docker image](https://github.com/mmarmor/booksquisher-docker)

**About Me**

* [Michael S. Marmor](https://www.michaelmarmor.com), the creator of the Booksquisher Docker image, User's Guide, and Example Book Templates