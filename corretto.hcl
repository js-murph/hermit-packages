description = "No-cost, multiplatform, production-ready distribution of OpenJDK."
binaries = ["bin/*"]
provides = ["jdk", "jre"]
env = {
  "JAVA_HOME": "${root}",
}
test = "java -version"
strip = 1
vars = {
  "os_": "${os}",
  "arch_": "${xarch}",
}

platform "darwin" {
  vars = {
    "os_": "macosx",
  }
  root = "${dest}/Contents/Home"
  dest = "${HOME}/Library/Java/JavaVirtualMachines/corretto-${version}.jdk"
}

platform "amd64" {
  vars = {
    "arch_": "x64",
  }
}

source = "https://corretto.aws/downloads/resources/${version}/amazon-corretto-${version}-${os_}-${arch_}.tar.gz"

channel "stable" {
  update = "24h"
  version = "11.*"
}

version "11.0.15.9.1" "11.0.17.8.1" "11.0.18.10.1" "11.0.19.7.1" "11.0.20.8.1"
        "11.0.20.9.1" "11.0.21.9.1" {
  auto-version {
    github-release = "corretto/corretto-11"
  }
}

version "17.0.3.6.1" "17.0.4.8.1" "17.0.4.9.1" "17.0.5.8.1" "17.0.6.10.1"
        "17.0.7.7.1" "17.0.8.7.1" "17.0.8.8.1" "17.0.9.8.1" {
  auto-version {
    github-release = "corretto/corretto-17"
  }
}

sha256sums = {
  "https://corretto.aws/downloads/resources/11.0.15.9.1/amazon-corretto-11.0.15.9.1-macosx-aarch64.tar.gz": "939f0cc40f4dd749647e352ea2759fbf73c8c59662476ca237113abf9eed0710",
  "https://corretto.aws/downloads/resources/11.0.15.9.1/amazon-corretto-11.0.15.9.1-macosx-x64.tar.gz": "36afb7f091cd9b986a50c3f878f167c59eae615f004b2cb1c5c394f9f2fc215a",
  "https://corretto.aws/downloads/resources/11.0.15.9.1/amazon-corretto-11.0.15.9.1-linux-x64.tar.gz": "1878cfcb1ed374d5c8d3e11f230ec702ad3a6779107b640ddb5a0cf9e313bb61",
  "https://corretto.aws/downloads/resources/11.0.17.8.1/amazon-corretto-11.0.17.8.1-linux-x64.tar.gz": "9628b1c1ec298a6e0f277afe383b342580086cfd7eee2be567b8d00529ca9449",
  "https://corretto.aws/downloads/resources/11.0.17.8.1/amazon-corretto-11.0.17.8.1-macosx-aarch64.tar.gz": "badca7ba0fda3c3d5e2637669525f29c0d4ec7d726b58faedc9e340a806f4fc3",
  "https://corretto.aws/downloads/resources/11.0.17.8.1/amazon-corretto-11.0.17.8.1-macosx-x64.tar.gz": "a64f436ad92d46a6fb3a2e48dd34c0e11849256b302fd53cc9b2614500c54cbd",
  "https://corretto.aws/downloads/resources/17.0.3.6.1/amazon-corretto-17.0.3.6.1-macosx-x64.tar.gz": "8d5390c8af8063d0f584eb0dcd9d0a85e685ee76de3ffaacc19fab1b5c658669",
  "https://corretto.aws/downloads/resources/17.0.3.6.1/amazon-corretto-17.0.3.6.1-macosx-aarch64.tar.gz": "27e5a2969a6abf3b7f390e0e63d8e622a353d31a289898fcfd808dd605f9a6ba",
  "https://corretto.aws/downloads/resources/17.0.3.6.1/amazon-corretto-17.0.3.6.1-linux-x64.tar.gz": "e102e77edebb826fe22f5b6e2666d01586a87344618cdbeaed8a593787f4ff8a",
  "https://corretto.aws/downloads/resources/17.0.4.8.1/amazon-corretto-17.0.4.8.1-macosx-x64.tar.gz": "b2714d48df8d3d8f22fdfb88af548a11603b2c792f1c0c163f6fd39e555a342a",
  "https://corretto.aws/downloads/resources/17.0.4.8.1/amazon-corretto-17.0.4.8.1-linux-x64.tar.gz": "81d9de7e8a3bda1e0fbdf36de45d7df326308d333068eedb6b6126b60fedbefd",
  "https://corretto.aws/downloads/resources/17.0.4.8.1/amazon-corretto-17.0.4.8.1-macosx-aarch64.tar.gz": "6b7b85dcf4937777a32aed8f62af886b9e50804e238633871289b2b3bb7f53a3",
  "https://corretto.aws/downloads/resources/17.0.4.9.1/amazon-corretto-17.0.4.9.1-linux-x64.tar.gz": "e2b130979ecd21c78bef2c6c21ea1dc4c2e73b8a422fd98428025895f9517349",
  "https://corretto.aws/downloads/resources/17.0.4.9.1/amazon-corretto-17.0.4.9.1-macosx-x64.tar.gz": "fd0f4005ec2e77b0ec6dff01ad9107daa317b96640c73b0198e0f55966d1dbb9",
  "https://corretto.aws/downloads/resources/17.0.4.9.1/amazon-corretto-17.0.4.9.1-macosx-aarch64.tar.gz": "304d6c1d5aa497e720bd04d6cd5f8310e6a8262bf4a688616de10eefb7c9ea52",
  "https://corretto.aws/downloads/resources/17.0.5.8.1/amazon-corretto-17.0.5.8.1-macosx-aarch64.tar.gz": "fe74ec7b1a81f8afaea09fa76e566350259fa861c49d41e14f6a5fffd5f181e3",
  "https://corretto.aws/downloads/resources/17.0.5.8.1/amazon-corretto-17.0.5.8.1-macosx-x64.tar.gz": "34fcab7e6386c19be3f4367397c17a3d2061c6901bbacfbd3dc6818755e50ef8",
  "https://corretto.aws/downloads/resources/17.0.5.8.1/amazon-corretto-17.0.5.8.1-linux-x64.tar.gz": "aeec1a4fb34ffabbac931ba430601807133659a4bd02703c33044e80c925bed2",
  "https://corretto.aws/downloads/resources/11.0.18.10.1/amazon-corretto-11.0.18.10.1-linux-x64.tar.gz": "40baac37cb9a3953bba01c07f34782bf4d80a7529009641278e42ca674ff9ee8",
  "https://corretto.aws/downloads/resources/11.0.18.10.1/amazon-corretto-11.0.18.10.1-macosx-x64.tar.gz": "8f075fe7e0b6fb261a005a8cc8b8bddc6ac47cff5da580ad9b0b8a77d4ddccd7",
  "https://corretto.aws/downloads/resources/11.0.18.10.1/amazon-corretto-11.0.18.10.1-macosx-aarch64.tar.gz": "ad8c9624f84d3c1e5fe6e381f605e37ba179e922f5c068b7f81492657d156689",
  "https://corretto.aws/downloads/resources/17.0.6.10.1/amazon-corretto-17.0.6.10.1-macosx-aarch64.tar.gz": "f7411c1d8a94681e669b133ab57a7ef815aa145b3ecc041c93ca7ff1eb1811b3",
  "https://corretto.aws/downloads/resources/17.0.6.10.1/amazon-corretto-17.0.6.10.1-macosx-x64.tar.gz": "1ba7e50d74c2f402431d365eb8e5f7b860b03b18956af59f5f364f6567a8463e",
  "https://corretto.aws/downloads/resources/17.0.6.10.1/amazon-corretto-17.0.6.10.1-linux-x64.tar.gz": "365bb4ae3f56bfb3c0df5f8f5b809ff0212366c46970c4b371acb80ecf4706cc",
  "https://corretto.aws/downloads/resources/11.0.19.7.1/amazon-corretto-11.0.19.7.1-linux-x64.tar.gz": "d3b7de2a0916da0d3826d980e9718a64932a160c33e8dfa6dbff2a91fef56976",
  "https://corretto.aws/downloads/resources/11.0.19.7.1/amazon-corretto-11.0.19.7.1-macosx-x64.tar.gz": "11e6010e96ca2ee48ae26bdc8d0e233d9fbe3f2a80c50f472f48ef564d245445",
  "https://corretto.aws/downloads/resources/11.0.19.7.1/amazon-corretto-11.0.19.7.1-macosx-aarch64.tar.gz": "d8c19e5ab89ed3ccb66a15d9da59c762907e797ae215e0215ee6cc48175cfe4f",
  "https://corretto.aws/downloads/resources/17.0.7.7.1/amazon-corretto-17.0.7.7.1-linux-x64.tar.gz": "8d23e0f1249f2852caa76b7ae8770847e005e4310a70a46b7c1a816c34ff9195",
  "https://corretto.aws/downloads/resources/17.0.7.7.1/amazon-corretto-17.0.7.7.1-macosx-x64.tar.gz": "68e169404a1021d24f7c39b2fa2366d40075311377f9cbddd328f0aac6c2ea6c",
  "https://corretto.aws/downloads/resources/17.0.7.7.1/amazon-corretto-17.0.7.7.1-macosx-aarch64.tar.gz": "d2410941ee1a8910412511c18a5ff954bc4bd1e4412cb4260a7f138be3a791dd",
  "https://corretto.aws/downloads/resources/11.0.20.8.1/amazon-corretto-11.0.20.8.1-macosx-aarch64.tar.gz": "39b540600520dae0e664bf9f7bfa8bf931b6e2b320960e276197670bd9e08928",
  "https://corretto.aws/downloads/resources/11.0.20.8.1/amazon-corretto-11.0.20.8.1-macosx-x64.tar.gz": "9e6bf76968737f929511b7c8f4d1456f7d2f53e996e2ce9f352d529ee8e5c028",
  "https://corretto.aws/downloads/resources/11.0.20.8.1/amazon-corretto-11.0.20.8.1-linux-x64.tar.gz": "78e5e259dd11ffb02007c68cfb68a2602aec9d783cf1ddcdf453179ef251c64e",
  "https://corretto.aws/downloads/resources/17.0.8.7.1/amazon-corretto-17.0.8.7.1-macosx-aarch64.tar.gz": "053c0bac27f5847bb2a2e7c6dbc223b880b3873b671ff8793a529d28cc37519d",
  "https://corretto.aws/downloads/resources/17.0.8.7.1/amazon-corretto-17.0.8.7.1-macosx-x64.tar.gz": "10dafc711e1ea18246f942cd067a007f3756495c117b1ea1ff40acdf2c944952",
  "https://corretto.aws/downloads/resources/17.0.8.7.1/amazon-corretto-17.0.8.7.1-linux-x64.tar.gz": "6cc5e6ed4913fe51d3efd96684124522d0bfe75c263a31cf06340e0dfa81f4cb",
  "https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-macosx-aarch64.tar.gz": "32c81583c291153662b39e199129ec77303651593f531ca3839f78f7a37121c0",
  "https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-linux-x64.tar.gz": "b6150255d304eab8fdcc0422beab277e5395bc481b4f87f096da78a979e47d47",
  "https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-macosx-x64.tar.gz": "bbb6dbb917b8def5fa2c7e94a52c8b92020d6e38c5f55634296facff3168e4b4",
  "https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-macosx-x64.tar.gz": "edb6d0406a8c16b44b7bd81b3d23d2a3de054c06ec8d86a25872093eee501ba0",
  "https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-macosx-aarch64.tar.gz": "08833433222ddb241a448eab92e0926d96287986f85dd5a6a065ae724e1bce43",
  "https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-linux-x64.tar.gz": "dd0e9596a6661c85656bbb6c2c726b768ce50af7cd37209d56b681d0838c3393",
  "https://corretto.aws/downloads/resources/11.0.21.9.1/amazon-corretto-11.0.21.9.1-linux-x64.tar.gz": "a09218f9caf0f5750137a41a69c2dddf98bfd4b9a596d57d82e3c32ec0145b15",
  "https://corretto.aws/downloads/resources/11.0.21.9.1/amazon-corretto-11.0.21.9.1-macosx-aarch64.tar.gz": "c5f5a059203de3b1b3c239331082f36dcad0f261c80a1766e2dc7ab46807f6bd",
  "https://corretto.aws/downloads/resources/11.0.21.9.1/amazon-corretto-11.0.21.9.1-macosx-x64.tar.gz": "2ce6100b43b102dbd631ec53c14b39b5251e319e431dc4cae2abf5059d2e04fd",
  "https://corretto.aws/downloads/resources/17.0.9.8.1/amazon-corretto-17.0.9.8.1-macosx-x64.tar.gz": "7eed832eb25b6bb9fed5172a02931804ed0bf65dc86a2ddc751aa7648bb35c43",
  "https://corretto.aws/downloads/resources/17.0.9.8.1/amazon-corretto-17.0.9.8.1-linux-x64.tar.gz": "0cf11d8e41d7b28a3dbb95cbdd90c398c310a9ea870e5a06dac65a004612aa62",
  "https://corretto.aws/downloads/resources/17.0.9.8.1/amazon-corretto-17.0.9.8.1-macosx-aarch64.tar.gz": "8a0c542e78e47cb5de1db40763692d55b977f1d0b31c5f0ebf2dd426fa33a2f4",
}
