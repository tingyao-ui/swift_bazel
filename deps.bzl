"""Specifies the workspace dependencies for the `swift_bazel` repository."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# buildifier: disable=unnamed-macro
def swift_bazel_dependencies():
    """Declare the Bazel workspace dependencies for the `swift_bazel` repository."""

    maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "b8a1527901774180afc798aeb28c4634bdccf19c4d98e7bdd1ce79d1fe9aaad7",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.1/bazel-skylib-1.4.1.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "dd926a88a564a9246713a9c00b35315f54cbd46b31a26d5d8fb264c07045f05d",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.38.1/rules_go-v0.38.1.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.38.1/rules_go-v0.38.1.zip",
        ],
    )

    # GH143: Waiting for bazel-gazelle release with dep fix:
    # https://github.com/bazelbuild/bazel-gazelle/pull/1413
    # maybe(
    #     http_archive,
    #     name = "bazel_gazelle",
    #     sha256 = "ecba0f04f96b4960a5b250c8e8eeec42281035970aa8852dda73098274d14a1d",
    #     urls = [
    #         "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
    #         "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.29.0/bazel-gazelle-v0.29.0.tar.gz",
    #     ],
    # )

    maybe(
        http_archive,
        name = "bazel_gazelle",
        sha256 = "2591fe5c9ff639317c5144665f2b97f3e45dac7ebb0b9357f8ddb3533b60a16f",
        strip_prefix = "bazel-gazelle-97a754c6e45848828b27152fa64ca5dd3003d832",
        urls = [
            "https://github.com/bazelbuild/bazel-gazelle/archive/97a754c6e45848828b27152fa64ca5dd3003d832.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "cgrindel_bazel_starlib",
        sha256 = "00ea5182b75330de5934d0e5fdcfdaa22c2452227153b67278bb0389326ebcba",
        urls = [
            "https://github.com/cgrindel/bazel-starlib/releases/download/v0.14.9/bazel-starlib.v0.14.9.tar.gz",
        ],
    )
