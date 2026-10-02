class Jaketts < Formula
  include Language::Python::Virtualenv

  desc "Local CLI and desktop text-to-speech powered by Kokoro-82M via ONNX Runtime"
  homepage "https://github.com/ofalltrades/jaketts"
  url "https://github.com/ofalltrades/jaketts/archive/5de0a2b946cc0d132a499181e12adc16d4839d3e.tar.gz"
  version "1.0.10"
  sha256 "5b109559a0a26a3384e306fb95a9d7c806c47d6edeaa3620b185b6c29066518d"
  license "0BSD"

  depends_on "cmake" => :build
  depends_on arch: :arm64
  depends_on "libsndfile"
  depends_on macos: :sonoma
  depends_on "mecab"
  depends_on "portaudio"
  depends_on "python@3.12"

  pypi_packages package_name: "jaketts"

  resource "espeakng-loader" do
    url "https://files.pythonhosted.org/packages/a8/26/258c0cd43b9bc1043301c5f61767d6a6c3b679df82790c9cb43a3277b865/espeakng_loader-0.2.4-py3-none-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "d27cdca31112226e7299d8562e889d3e38a1e48055c9ee381b45d669072ee59f"
  end

  resource "fugashi" do
    url "https://files.pythonhosted.org/packages/ee/ec/b2e5aeba9438551ee4ae5275e95da506a279f53432e618daa1d4bd14c7d5/fugashi-1.5.2.tar.gz"
    sha256 "a7959eab95bb37a6a934fc2314d3ff888664d11b88d0e1c596260a5785d5880e"
  end

  resource "mojimoji" do
    url "https://files.pythonhosted.org/packages/5b/12/b21c4ecf2fb5d162c0f6fde9dc401cc9a730dab4f85373ca25c350c204e7/mojimoji-0.0.13-cp312-cp312-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "ad4a2e1fb2b643ac3166f30be97a95ad1877e4670c6dc656c4ef580681b84c49"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/60/39/789131c1188c078dcb3a1692e72e1e050c68b88ffe72c9ccaac9bcd7a9cd/numpy-2.5.3-cp312-cp312-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "f59a878c33d6b88122d80d239bb3b845d58708750b0cb06a09aebb9b18ec696c"
  end

  resource "onnxruntime" do
    url "https://files.pythonhosted.org/packages/31/6f/48169f2e62b405bff5053cbd1d73fb5ce41ef7ecd13bb3bfcc191e689b8a/onnxruntime-1.30.0-cp312-cp312-macosx_14_0_arm64.whl",
        using: :nounzip
    sha256 "001ed726c9bd5e2bc92faade7d37d889e9606a350b7d5529f0227df2e3bb57fd"
  end

  resource "shiboken6" do
    url "https://files.pythonhosted.org/packages/47/44/11bf71c36e71936ab4e923e5dd23599dab527c4488b01860b0f689ce9947/shiboken6-6.11.2-cp310-abi3-macosx_13_0_universal2.whl",
        using: :nounzip
    sha256 "53659683b1f7a08e9f87eff9b1065f1ceb7110cd7a4bc09fdf5efe43d286604d"
  end

  resource "pyside6-essentials" do
    url "https://files.pythonhosted.org/packages/6f/16/0b7ecf89ebada82ed0430be33809ff325761ece83104f8635b1bd101fcd0/pyside6_essentials-6.11.2-cp310-abi3-macosx_13_0_universal2.whl",
        using: :nounzip
    sha256 "77795c145202e65a78d88f7cd409d186e3ba23d159bdb3ba2dcd159ae5e5f0d9"
  end

  resource "cython" do
    url "https://files.pythonhosted.org/packages/3b/88/1e0df92588704503a863230fed61d95fc6e38c0db2537eaf6e5c140e5055/cython-3.1.5-cp312-cp312-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "61c42f881320a2b34a88806ddee6b424b3caa6fa193b008123704a2896b5bc37"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/95/9c/c510029fc6ef33a6275cd2c5d3cecd6613dfd6aa401d57c54f1c18852ccf/setuptools-84.0.0-py3-none-any.whl",
        using: :nounzip
    sha256 "51a52592b3b99e102b609654876bd65f19f999935166d1352678931132b0c670"
  end

  resource "setuptools-scm" do
    url "https://files.pythonhosted.org/packages/ab/ac/8f96ba9b4cfe3e4ea201f23f4f97165862395e9331a424ed325ae37024a8/setuptools_scm-8.3.1-py3-none-any.whl",
        using: :nounzip
    sha256 "332ca0d43791b818b841213e76b1971b7711a960761c5bea5fc5cdb5196fbce3"
  end

  resource "flit-core" do
    url "https://files.pythonhosted.org/packages/f2/65/b6ba90634c984a4fcc02c7e3afe523fef500c4980fec67cc27536ee50acf/flit_core-3.12.0-py3-none-any.whl",
        using: :nounzip
    sha256 "e7a0304069ea895172e3c7bb703292e992c5d1555dd1233ab7b5621b5b69e62c"
  end

  resource "hatch-fancy-pypi-readme" do
    url "https://files.pythonhosted.org/packages/58/b4/ad71e051b34f1935783de37beffee16e343ff2514b204dc515f9e939d4af/hatch_fancy_pypi_readme-25.1.0-py3-none-any.whl",
        using: :nounzip
    sha256 "ce0134c40d63d874ac48f48ccc678b8f3b62b8e50e9318520d2bffc752eedaf3"
  end

  resource "hatch-vcs" do
    url "https://files.pythonhosted.org/packages/5f/48/1f85cee4b7b4f40b9b814b1febbc661bda6ced9649e410a0b74f6e415dd0/hatch_vcs-0.5.0-py3-none-any.whl",
        using: :nounzip
    sha256 "b49677dbdc597460cc22d01b27ab3696f5e16a21ecf2700fb01bc28e1f2a04a7"
  end

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/5f/80/91f51f439c05d4ec4623c22928ce16a938d6d793bf709477830823497859/hatchling-1.32.4-py3-none-any.whl",
        using: :nounzip
    sha256 "08ecf7548fb48205e7f213d70c71e67b8271b7242093dc3f1da578b42c734a2c"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/f1/d9/7fb5aa316bc299258e68c73ba3bddbc499654a07f151cba08f6153988714/pathspec-1.1.1-py3-none-any.whl",
        using: :nounzip
    sha256 "a00ce642f577bf7f473932318056212bc4f8bfdf53128c78bbd5af0b9b20b189"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/54/20/4d324d65cc6d9205fabedc306948156824eb9f0ee1633355a8f7ec5c66bf/pluggy-1.6.0-py3-none-any.whl",
        using: :nounzip
    sha256 "e920276dd6813095e9377c0bc5566d94c932c33b27a3e3945d8389c374dd4746"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/13/bc/8c13eb66537dce1d2bd3a57132902f38d0e7f5bb46fa9f4daed9fe9d76ee/tomlkit-0.15.1-py3-none-any.whl",
        using: :nounzip
    sha256 "177a05aece5a8ca5266fd3c448abb47b8d352f09d477d3ca8332db4d89b24304"
  end

  resource "trove-classifiers" do
    url "https://files.pythonhosted.org/packages/30/81/0da8afb52a71d0a4f2bd3152357b1a441e393b286374802b9d3addab4ab5/trove_classifiers-2026.9.21.13-py3-none-any.whl",
        using: :nounzip
    sha256 "8b1ff4f9c191b1040b71c37f1e445ab99732911e3cd91de52838453a854d7a17"
  end

  resource "uv-build" do
    url "https://files.pythonhosted.org/packages/6a/88/15561f32e05d36720fd7e63d71ca74913de0bb80a3b444318a00620e3d26/uv_build-0.9.30-py3-none-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "f1c7e3115c51a652bea99ade840550cf2a926ab168ef113a56a8349acaec7db4"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/2e/29/69cfbb602cd91690c55d38ba9fe53e6a7e76a6fa647bf38f19c138d25449/wheel-0.48.0-py3-none-any.whl",
        using: :nounzip
    sha256 "3217dcc807155e45db462d7ef2431f5ddda0d7273b700d05a67b271ceb1287ab"
  end

  resource "addict" do
    url "https://files.pythonhosted.org/packages/85/ef/fd7649da8af11d93979831e8f1f8097e85e82d5bfeabc8c68b39175d8e75/addict-2.4.0.tar.gz"
    sha256 "b3b2210e0e067a281f5646c8c5db92e99b7231ea8b0eb5f74dbdf9e259d4e494"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "cloudpickle" do
    url "https://files.pythonhosted.org/packages/27/fb/576f067976d320f5f0114a8d9fa1215425441bb35627b1993e5afd8111e5/cloudpickle-3.1.2.tar.gz"
    sha256 "7fda9eb655c9c230dab534f1983763de5835249750e85fbcef43aaa30a9a2414"
  end

  resource "cn2an" do
    url "https://files.pythonhosted.org/packages/4e/07/b45328cc4a4b88adea7b24d84d82f569e362773d4a4b69aba6e2350b058a/cn2an-0.5.24.tar.gz"
    sha256 "c276cfc4b3c9e758214841de597502eb178de50b8da2633ed345564f90705f0e"
  end

  resource "dlinfo" do
    url "https://files.pythonhosted.org/packages/85/8e/8f2f94cd40af1b51e8e371a83b385d622170d42f98776441a6118f4dd682/dlinfo-2.0.0.tar.gz"
    sha256 "88a2bc04f51d01bc604cdc9eb1c3cc0bde89057532ca6a3e71a41f6235433e17"
  end

  resource "flatbuffers" do
    url "https://files.pythonhosted.org/packages/e8/2d/d2a548598be01649e2d46231d151a6c56d10b964d94043a335ae56ea2d92/flatbuffers-25.12.19-py2.py3-none-any.whl"
    sha256 "7634f50c427838bb021c2d66a3d1168e9d199b0607e6329399f04846d42e20b4"
  end

  resource "jaconv" do
    url "https://files.pythonhosted.org/packages/91/0e/9fffaacda59bdfa479372c71d18d72968d2af5a36a5a2086b02a60124b98/jaconv-0.5.0.tar.gz"
    sha256 "53f6f968276846716f0f37100a6d5c7308cfa1e0c714eb41287d5bb09345c40f"
  end

  resource "jieba" do
    url "https://files.pythonhosted.org/packages/c6/cb/18eeb235f833b726522d7ebed54f2278ce28ba9438e3135ab0278d9792a2/jieba-0.42.1.tar.gz"
    sha256 "055ca12f62674fafed09427f176506079bc135638a14e23e25be909131928db2"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/d5/1d/537ab090f302b838943a1b56497dd53059b9a9b46a074936470173a2e207/joblib-1.6.0.tar.gz"
    sha256 "2ccc96785b12046c08fd6d55839c12857831b54a3c1673ffadd2f04bfc4eda03"
  end

  resource "kokoro-onnx" do
    url "https://files.pythonhosted.org/packages/6b/ef/b58dedba0a1417f16352352787fbcfcbaa0b907e284c2ea3ebaf5541109a/kokoro_onnx-0.6.1.tar.gz"
    sha256 "7bbdb66dd53775f71088a99999a9aefdad240740daf54cb09410d8bb1e294e35"
  end

  resource "misaki-fork" do
    url "https://files.pythonhosted.org/packages/4d/60/13f61cacba1ce9b29d8f285630b095c605cf99509b055665117ff5680be1/misaki_fork-0.9.6.tar.gz"
    sha256 "dd75b77bdccb4c01c97274ed490d9e2ada9e69c3ec84ecea2b6d23302082bce0"
  end

  resource "ordered-set" do
    url "https://files.pythonhosted.org/packages/4c/ca/bfac8bc689799bcca4157e0e0ced07e70ce125193fc2e166d2e685b7e2fe/ordered-set-4.1.0.tar.gz"
    sha256 "694a8e44c87657c59292ede72891eb91d34131f6531463aab3009191c77364a8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl",
        using: :nounzip
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "phonemizer" do
    url "https://files.pythonhosted.org/packages/bc/7d/5a96ddb130552f6365a090b5fd12ace803a95a858e3f67258f2ad13dc51f/phonemizer-3.4.0.tar.gz"
    sha256 "e13231980c50bc671ec0466379ba027260ad9d61929952d8ae9665b3d0f251eb"
  end

  resource "proces" do
    url "https://files.pythonhosted.org/packages/2c/3d/4159b57736ced0fd22553226df20a985ef7655519c80ffcb8a9fb49ebeee/proces-0.1.7.tar.gz"
    sha256 "70a05d9e973dd685f7a9092c58be695a8181a411d63796c213232fd3fdc43775"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/d9/89/5b8517baa72f84a67b8a307ba953c91057af618bf40bf676f3c03551f8f0/protobuf-7.36.2.tar.gz"
    sha256 "497d0463ff3316681da6c0b9e8d06cb465d61abce00b613ab42226175644d1bb"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pyopenjtalk" do
    url "https://files.pythonhosted.org/packages/58/74/ccd31c696f047ba381f9b11a504bf1199756c3f30f3de64e3eeb83e10b4a/pyopenjtalk-0.4.1.tar.gz"
    sha256 "d5ada46f7fc2b52c1c79c273eb9668ff6ad7ab276a8db9d8be119ef93440f0dc"
  end

  resource "pypinyin" do
    url "https://files.pythonhosted.org/packages/b4/a4/784cf98c09e0dc22776b0d7d8a4a5b761218bcae4608c2416ce1e167c8af/pypinyin-0.55.0.tar.gz"
    sha256 "b5711b3a0c6f76e67408ec6b2e3c4987a3a806b7c528076e7c7b86fcf0eaa66b"
  end

  resource "pypinyin-dict" do
    url "https://files.pythonhosted.org/packages/64/7a/f56b7096cde930a65f8d5dc8cb726136d53c23175148f6aa1daa75419126/pypinyin_dict-0.9.0.tar.gz"
    sha256 "8c491396baa1567311f2ec759cbc154638f3bcefdc711d34e53e373e3a429fa5"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/fc/f2/af1da9d3ceed77bfcdce40427d49ba0be94e4fe84245e3bfef68c10e75b6/regex-2026.9.29.tar.gz"
    sha256 "8b5fcc4771732191b2b7d1dd68d8f0353f47f8d90b6150f6dce58bf1112442cb"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/ec/db/0c890e2d9aab9ba284021efc02e1d3aebfecab1b611762d7434602209bcf/sounddevice-0.5.6.tar.gz"
    sha256 "8ec9fbfde2e32f020b167e348f3ab3bac6625a5f15af524d790108ac7147a410"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/d2/db/949331952a6fb1c5b12e9de80fd08747966c2039d1a61db4764fbd3981c2/soundfile-0.14.0.tar.gz"
    sha256 "ba1c1a2d618bca5c406647c83b89f07cc8810fa506a50622a6993ba130c1de11"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "unidic-lite" do
    url "https://files.pythonhosted.org/packages/55/2b/8cf7514cb57d028abcef625afa847d60ff1ffbf0049c36b78faa7c35046f/unidic-lite-1.0.8.tar.gz"
    sha256 "db9d4572d9fdd4d00a97949d4b0741ec480ee05a7e7e2e32f547500dae27b245"
  end

  resource "kokoro-model" do
    url "https://github.com/thewh1teagle/kokoro-onnx/releases/download/model-files-v1.1/kokoro-v1.0.fp16.onnx",
        using: :nounzip
    sha256 "f3a290d384fbb27966d462905c71a46cef9e5fd00516b40df32a0b4afe77ac96"
  end

  resource "kokoro-voices" do
    url "https://github.com/thewh1teagle/kokoro-onnx/releases/download/model-files-v1.1/voices-v1.0.bin",
        using: :nounzip
    sha256 "bca610b8308e8d99f32e6fe4197e7ec01679264efed0cac9140fe9c29f1fbf7d"
  end

  deny_network_access!

  def install
    wheel_resources = %w[
      espeakng-loader
      mojimoji
      numpy
      onnxruntime
      shiboken6
      pyside6-essentials
    ]

    helper_resources = %w[
      cython
      flit-core
      hatch-fancy-pypi-readme
      hatch-vcs
      hatchling
      pathspec
      pluggy
      setuptools
      setuptools-scm
      tomlkit
      trove-classifiers
      uv-build
      wheel
    ]

    asset_resources = %w[
      kokoro-model
      kokoro-voices
    ]

    venv = virtualenv_create(libexec, "python3.12")
    ENV.prepend_path "PATH", libexec/"bin"

    # NumPy must exist before pyopenjtalk is compiled.
    resource("numpy").stage do
      wheel = Pathname.glob("*.whl").first
      odie "NumPy wheel not found" unless wheel
      venv.pip_install wheel
    end

    resource("packaging").stage do
      wheel = Pathname.glob("*.whl").first
      odie "Packaging wheel not found" unless wheel
      venv.pip_install wheel
    end

    helper_resources.each do |name|
      resource(name).stage do
        wheel = Pathname.glob("*.whl").first
        odie "Build-helper wheel not found for #{name}" unless wheel
        venv.pip_install wheel
      end
    end

    # Build official pyopenjtalk from source without allowing pip to
    # create another network-dependent isolated build environment.
    resource("pyopenjtalk").stage do
      system libexec/"bin/python", "-m", "pip", "install",
             "--no-deps",
             "--no-build-isolation",
             "--no-index",
             "--no-compile",
             "."
    end

    resources.each do |resource|
      next if asset_resources.include?(resource.name)
      next if helper_resources.include?(resource.name)
      next if resource.name == "numpy"
      next if resource.name == "packaging"
      next if resource.name == "pyopenjtalk"

      if wheel_resources.include?(resource.name)
        resource.stage do
          wheel = Pathname.glob("*.whl").first
          odie "Wheel not found for #{resource.name}" unless wheel
          venv.pip_install wheel
        end
      else
        venv.pip_install resource, build_isolation: false
      end
    end

    venv.pip_install_and_link buildpath, build_isolation: false

    asset_dir = libexec/"share/jaketts"
    asset_dir.mkpath

    resource("kokoro-model").stage do
      model = Pathname.glob("*.onnx").first
      odie "Kokoro ONNX model not found" unless model
      asset_dir.install model
    end

    resource("kokoro-voices").stage do
      voices = Pathname.glob("*.bin").first
      odie "Kokoro voice bundle not found" unless voices
      asset_dir.install voices
    end

    # JakeTTS uses only QtCore, QtGui and QtWidgets.
    pyside = libexec/"lib/python3.12/site-packages/PySide6"

    %w[
      Qt/plugins/imageformats/libqsvg.dylib
      Qt/qml
      include
      typesystems
      Designer.app
      Linguist.app
      Assistant.app
      qmlls
      qmllint
      qmlformat
      lupdate
      lrelease
    ].each do |relative|
      path = pyside/relative
      rm_r path if path.exist?
    end

    keep_frameworks = %w[
      QtCore.framework
      QtDBus.framework
      QtGui.framework
      QtWidgets.framework
    ]

    Dir[(pyside/"Qt/lib/*.framework").to_s].each do |framework|
      next if keep_frameworks.include?(File.basename(framework))

      rm_r framework
    end

    keep_bindings = %w[
      QtCore.abi3.so
      QtGui.abi3.so
      QtWidgets.abi3.so
    ]

    Dir[(pyside/"Qt*.abi3.so").to_s].each do |binding|
      next if keep_bindings.include?(File.basename(binding))

      rm(binding)
    end

    rm(Dir[(pyside/"*.pyi").to_s])

    %w[
      designer
      iconengines
      networkinformation
      qmllint
      qmltooling
      sqldrivers
      tls
      vectorimageformats
    ].each do |plugin|
      path = pyside/"Qt/plugins"/plugin
      rm_r path if path.exist?
    end
  end

  test do
    assert_match "jaketts 1.0.10", shell_output("#{bin}/jtts -v")

    assert_path_exists libexec/"share/jaketts/kokoro-v1.0.fp16.onnx"
    assert_path_exists libexec/"share/jaketts/voices-v1.0.bin"

    system libexec/"bin/python", "-c",
           "from PySide6.QtWidgets import QApplication; from kokoro_onnx import Kokoro"

    system bin/"jtts",
           "-o", testpath/"english.wav",
           "bm_george",
           "Homebrew local synthesis test."
    assert_path_exists testpath/"english.wav"

    system bin/"jtts",
           "-o", testpath/"japanese.wav",
           "jf_alpha",
           "朝の光が窓から差し込んでいた。"
    assert_path_exists testpath/"japanese.wav"

    system bin/"jtts",
           "-o", testpath/"chinese.wav",
           "zf_xiaobei",
           "清晨的阳光从窗户照了进来。"
    assert_path_exists testpath/"chinese.wav"
  end
end
