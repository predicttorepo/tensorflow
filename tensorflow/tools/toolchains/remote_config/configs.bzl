"""Configurations of RBE builds used with remote config."""

load("//tensorflow/tools/toolchains/remote_config:rbe_config.bzl", "sigbuild_tf_configs", "tensorflow_local_config", "tensorflow_rbe_config", "tensorflow_rbe_win_config")

def initialize_rbe_configs():
    tensorflow_local_config(
        name = "local_execution",
    )

    tensorflow_rbe_config(
        name = "ubuntu16.04-manylinux2010-py3",
        os = "ubuntu16.04-manylinux2010",
        python_versions = ["3"],
        compiler = "",
    )

    tensorflow_rbe_config(
        name = "ubuntu16.04-py3-gcc7_manylinux2010-cuda10.0-cudnn7-tensorrt5.1",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "10.0",
        cudnn_version = "7",
        os = "ubuntu16.04-manylinux2010",
        python_versions = ["3"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "5.1",
    )

    tensorflow_rbe_config(
        name = "ubuntu16.04-gcc7_manylinux2010-cuda10.1-cudnn7-tensorrt6.0",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "10.1",
        cudnn_version = "7",
        os = "ubuntu16.04-manylinux2010-multipython",
        python_versions = ["2.7", "3.5", "3.6", "3.7", "3.8"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "6.0",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu18.04-gcc7_manylinux2010-cuda10.1-cudnn7-tensorrt6.0",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "10.1",
        cudnn_version = "7",
        os = "ubuntu18.04-manylinux2010-multipython",
        python_versions = ["2.7", "3.5", "3.6", "3.7", "3.8"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "6.0",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu18.04-gcc7_manylinux2010-cuda10.2-cudnn7-tensorrt6.0",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "10.2",
        cudnn_version = "7",
        os = "ubuntu18.04-manylinux2010-multipython",
        python_versions = ["3.7", "3.8", "3.9"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "6.0",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu18.04-gcc7_manylinux2010-cuda11.0-cudnn8-tensorrt7.1",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "11.0",
        cudnn_version = "8",
        os = "ubuntu18.04-manylinux2010-multipython",
        python_versions = ["2.7", "3.5", "3.6", "3.7", "3.8"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.1",
        python_install_path = "/usr/local",
    )

    # TODO(klimek): Delete this once all users are migrated to a python-version
    # independent configuration. In the future, use
    # "ubuntu16.04-gcc7_manylinux2010-cuda10.1-cudnn7-tensorrt6.0" instead.
    tensorflow_rbe_config(
        name = "ubuntu16.04-py3-gcc7_manylinux2010-cuda10.1-cudnn7-tensorrt6.0",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "10.1",
        cudnn_version = "7",
        os = "ubuntu16.04-manylinux2010",
        python_versions = ["3"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "6.0",
    )

    tensorflow_rbe_config(
        name = "ubuntu18.04-clang_manylinux2010-cuda11.0-cudnn8-tensorrt7.1",
        compiler = "/clang_rf2b94bd7eaa83d853dc7568fac87b1f8bf4ddec6/bin/clang",
        cuda_version = "11.0",
        cudnn_version = "8",
        os = "ubuntu18.04-manylinux2010-multipython",
        python_versions = ["2.7", "3.5", "3.6", "3.7", "3.8"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.1",
        sysroot = "/dt7",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu18.04-gcc7_manylinux2010-rocm",
        compiler = "/dt7/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        rocm_version = "5.0",  # Any version will do.
        os = "ubuntu18.04-manylinux2010-multipython",
        python_versions = ["2.7", "3.5", "3.6", "3.7", "3.8", "3.9"],
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-gcc9_manylinux2014-rocm",
        compiler = "/dt9/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        rocm_version = "5.0",  # Any version will do.
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9"],
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-clang_manylinux2014-cuda11.2-cudnn8.1-tensorrt7.2",
        compiler = "/clang_rf2b94bd7eaa83d853dc7568fac87b1f8bf4ddec6/bin/clang",
        cuda_version = "11.2",
        cudnn_version = "8.1",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        sysroot = "/dt9",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-gcc9_manylinux2014-cuda11.2-cudnn8.1-tensorrt7.2",
        compiler = "/dt9/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "11.2",
        cudnn_version = "8.1",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-clang_manylinux2014-cuda11.1-cudnn8-tensorrt7.2",
        compiler = "/clang_rf2b94bd7eaa83d853dc7568fac87b1f8bf4ddec6/bin/clang",
        cuda_version = "11.1",
        cudnn_version = "8",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        sysroot = "/dt9",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-gcc9_manylinux2014-cuda11.1-cudnn8-tensorrt7.2",
        compiler = "/dt9/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "11.1",
        cudnn_version = "8",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-clang_manylinux2014-cuda11.4-cudnn8.2-tensorrt7.2",
        compiler = "/clang_rf2b94bd7eaa83d853dc7568fac87b1f8bf4ddec6/bin/clang",
        cuda_version = "11.4",
        cudnn_version = "8.2",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        sysroot = "/dt9",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-gcc9_manylinux2014-cuda11.4-cudnn8.2-tensorrt7.2",
        compiler = "/dt9/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "11.4",
        cudnn_version = "8.2",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "7.2",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-clang_manylinux2014-cuda11.8-cudnn8.6-tensorrt8.4",
        compiler = "/clang_rf2b94bd7eaa83d853dc7568fac87b1f8bf4ddec6/bin/clang",
        cuda_version = "11.8",
        cudnn_version = "8.6",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "8.4",
        sysroot = "/dt9",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_config(
        name = "ubuntu20.04-gcc9_manylinux2014-cuda11.8-cudnn8.6-tensorrt8.4",
        compiler = "/dt9/usr/bin/gcc",
        compiler_prefix = "/usr/bin",
        cuda_version = "11.8",
        cudnn_version = "8.6",
        os = "ubuntu20.04-manylinux2014-multipython",
        python_versions = ["3.7", "3.8", "3.9", "3.10", "3.11"],
        tensorrt_install_path = "/usr",
        tensorrt_version = "8.4",
        python_install_path = "/usr/local",
    )

    tensorflow_rbe_win_config(
        name = "windows_py37",
        python_bin_path = "C:/Python37/python.exe",
    )

    # TF-Version-Specific SIG Build RBE Configs. The crosstool generated from these
    # configs are python-version-independent because they only care about the
    # tooling paths; the container mapping is useful only so that TF RBE users
    # may specify a specific Python version container. Yes, we could use the tag name instead,
    # but for vague security reasons we're obligated to use the pinned hash and update manually.
    # The name_container_map is helpfully auto-generated by a GitHub Action. You have to run it
    # manually. See go/tf-devinfra/docker#how-do-i-update-rbe-images

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-r2.9": "docker://gcr.io/tensorflow-sigs/build@sha256:ce8e5b828a43ce2ea0a9d0a9d4f5d967a9bf79c0596b005a96c4ab91a8462347",
            "sigbuild-r2.9-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:d064667c4b904bb1c658a6be913fc41a1e5d822a5feb9cdac849973a050b9901",
            "sigbuild-r2.9-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:ce8e5b828a43ce2ea0a9d0a9d4f5d967a9bf79c0596b005a96c4ab91a8462347",
            "sigbuild-r2.9-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:5a3224e8d7f592b2f343e0c8fe9521605c7c02f51f0c5cc9f9652614d1961850",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/dt9/usr/bin/gcc",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/dt9/usr/bin/gcc",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "GCC_HOST_COMPILER_PATH": "/dt9/usr/bin/gcc",
            "GCC_HOST_COMPILER_PREFIX": "/usr/bin",
            "HOST_CXX_COMPILER": "/dt9/usr/bin/gcc",
            "HOST_C_COMPILER": "/dt9/usr/bin/gcc",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "0",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.2",
            "TF_CUDNN_VERSION": "8.1",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "7.2",
        },
    )

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-r2.10": "docker://gcr.io/tensorflow-sigs/build@sha256:20d777f0200b7196349b9d25dec92ed4b34e966e8a8ab661d9b1b93c05d95c88",
            "sigbuild-r2.10-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:1091a4dc92c3227771ee748eb3f4eee1c32555f2e9805fcb341602b35e3da7a2",
            "sigbuild-r2.10-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:20d777f0200b7196349b9d25dec92ed4b34e966e8a8ab661d9b1b93c05d95c88",
            "sigbuild-r2.10-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:52c5bcfd3ce479c2f5148d7a9a119334148a33a3302b08e88e1045059dead62c",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/dt9/usr/bin/gcc",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/dt9/usr/bin/gcc",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "GCC_HOST_COMPILER_PATH": "/dt9/usr/bin/gcc",
            "GCC_HOST_COMPILER_PREFIX": "/usr/bin",
            "HOST_CXX_COMPILER": "/dt9/usr/bin/gcc",
            "HOST_C_COMPILER": "/dt9/usr/bin/gcc",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "0",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.2",
            "TF_CUDNN_VERSION": "8.1",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "7.2",
        },
    )

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-57469": "docker://gcr.io/tensorflow-sigs/build@sha256:c826d9902b8dffb7a98092c58692e61a0ddf5c92f9b867a952b1615e4aa621af",
            "sigbuild-57469-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:fdab3ce247b57388e98b7b0c5e212ade9b933048190add92a6d9fd843d10efdd",
            "sigbuild-57469-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:c826d9902b8dffb7a98092c58692e61a0ddf5c92f9b867a952b1615e4aa621af",
            "sigbuild-57469-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:b08820e0b08c13a314c8bd8c6db82d83bc2fbefcf0d0195f41ec4dbab28a2904",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/usr/lib/llvm-15/bin/clang",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "CLANG_CUDA_COMPILER_PATH": "/usr/lib/llvm-15/bin/clang",
            "HOST_CXX_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "HOST_C_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "1",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.2",
            "TF_CUDNN_VERSION": "8.1",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "7.2",
        },
    )

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-r2.11": "docker://gcr.io/tensorflow-sigs/build@sha256:19624dc8e664f4e00a85eee637711481ec00a22a9522a2575609f1ddce613615",
            "sigbuild-r2.11-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:bae2680dfb4457a9c6112aaf5f164dd677e4b14da0a1c6dabd81a573f8ec0d5d",
            "sigbuild-r2.11-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:19624dc8e664f4e00a85eee637711481ec00a22a9522a2575609f1ddce613615",
            "sigbuild-r2.11-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:71c9337f214850ce019696f10c4a5fbd1b408695d56addb86a7b3c0e5b76b76f",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/dt9/usr/bin/gcc",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/dt9/usr/bin/gcc",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "GCC_HOST_COMPILER_PATH": "/dt9/usr/bin/gcc",
            "GCC_HOST_COMPILER_PREFIX": "/usr/bin",
            "HOST_CXX_COMPILER": "/dt9/usr/bin/gcc",
            "HOST_C_COMPILER": "/dt9/usr/bin/gcc",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "0",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.2",
            "TF_CUDNN_VERSION": "8.1",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "7.2",
        },
    )

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-r2.12": "docker://gcr.io/tensorflow-sigs/build@sha256:f0b1e238ba04236818c0856ac987051a55f685d0bbe4104483f993691b2764cc",
            "sigbuild-r2.12-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:335e408a2bfc15a980851a9d0c5f7850dfd3cd79c8075abae6d5884a62ea9da4",
            "sigbuild-r2.12-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:f0b1e238ba04236818c0856ac987051a55f685d0bbe4104483f993691b2764cc",
            "sigbuild-r2.12-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:90eb536cd9a261c19e3410f07c819481316ca1bd3d4190f3ecf052d9f7720e38",
            "sigbuild-r2.12-python3.11": "docker://gcr.io/tensorflow-sigs/build@sha256:121853b6a08e175544a6cfebe34d547a62fbe27b52b1fd6f3dc026d339d89e0b",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/dt9/usr/bin/gcc",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/dt9/usr/bin/gcc",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "GCC_HOST_COMPILER_PATH": "/dt9/usr/bin/gcc",
            "GCC_HOST_COMPILER_PREFIX": "/usr/bin",
            "HOST_CXX_COMPILER": "/dt9/usr/bin/gcc",
            "HOST_C_COMPILER": "/dt9/usr/bin/gcc",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "0",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.8",
            "TF_CUDNN_VERSION": "8.6",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "8.4",
        },
    )

    sigbuild_tf_configs(
        name_container_map = {
            "sigbuild-r2.12-clang": "docker://gcr.io/tensorflow-sigs/build@sha256:c552eaf3d6746d17267526c78cdc39b37ceaae991304f867176ce25d12cd971e",
            "sigbuild-r2.12-clang-python3.8": "docker://gcr.io/tensorflow-sigs/build@sha256:122fa5958e6b4d4cbe6cb4cb1e4166c19543a44d2e5a1b15484520eb16f34eea",
            "sigbuild-r2.12-clang-python3.9": "docker://gcr.io/tensorflow-sigs/build@sha256:c552eaf3d6746d17267526c78cdc39b37ceaae991304f867176ce25d12cd971e",
            "sigbuild-r2.12-clang-python3.10": "docker://gcr.io/tensorflow-sigs/build@sha256:94461d608b406f810e69875d7dfcea4a65abedf7f15a1ac13e053c3159b7094c",
            "sigbuild-r2.12-clang-python3.11": "docker://gcr.io/tensorflow-sigs/build@sha256:8c4f515604923b745c2b1cee57fb61a13b30f8374e8ecd40d18f00d162b97276",
        },
        # Unclear why LIBC is set to 2.19 here, and yet manylinux2010 is 2.12
        # and manylinux2014 is 2.17.
        env = {
            "ABI_LIBC_VERSION": "glibc_2.19",
            "ABI_VERSION": "gcc",
            "BAZEL_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "BAZEL_HOST_SYSTEM": "i686-unknown-linux-gnu",
            "BAZEL_TARGET_CPU": "k8",
            "BAZEL_TARGET_LIBC": "glibc_2.19",
            "BAZEL_TARGET_SYSTEM": "x86_64-unknown-linux-gnu",
            "CC": "/usr/lib/llvm-15/bin/clang",
            "CC_TOOLCHAIN_NAME": "linux_gnu_x86",
            "CLEAR_CACHE": "1",
            "CUDNN_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "CLANG_CUDA_COMPILER_PATH": "/usr/lib/llvm-15/bin/clang",
            "HOST_CXX_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "HOST_C_COMPILER": "/usr/lib/llvm-15/bin/clang",
            "PYTHON_BIN_PATH": "/usr/bin/python3",
            "TENSORRT_INSTALL_PATH": "/usr/lib/x86_64-linux-gnu",
            "TF_CUDA_CLANG": "1",
            "TF_CUDA_COMPUTE_CAPABILITIES": "3.5,6.0",
            "TF_CUDA_VERSION": "11.2",
            "TF_CUDNN_VERSION": "8.1",
            "TF_ENABLE_XLA": "1",
            "TF_NEED_CUDA": "1",
            "TF_NEED_TENSORRT": "1",
            "TF_SYSROOT": "/dt9",
            "TF_TENSORRT_VERSION": "7.2",
        },
    )
