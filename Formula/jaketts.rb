class Jaketts < Formula
  include Language::Python::Virtualenv

  desc "Local CLI and desktop text-to-speech powered by Kokoro-82M"
  homepage "https://github.com/ofalltrades/jaketts"
  url "https://files.pythonhosted.org/packages/81/a7/1a37399ed848ac71e4d8decd2a006c6f0f4a4a6d05fd204a51c113d45321/jaketts-1.0.7.tar.gz"
  sha256 "8450d6d0e3ec23b5d60eeb6492ad5c9bc6ebaa76960a10e8590e45f24cce4a34"
  license "MIT"

  revision 1

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on "libsndfile"
  depends_on "libyaml"
  depends_on macos: :sonoma
  depends_on "mecab"
  depends_on "portaudio"
  depends_on "python-tk@3.12"
  depends_on "python@3.12"

  resource "espeakng-loader" do
    url "https://files.pythonhosted.org/packages/a8/26/258c0cd43b9bc1043301c5f61767d6a6c3b679df82790c9cb43a3277b865/espeakng_loader-0.2.4-py3-none-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "d27cdca31112226e7299d8562e889d3e38a1e48055c9ee381b45d669072ee59f"
  end

  resource "torch" do
    url "https://files.pythonhosted.org/packages/17/76/bb4770f56cf6d8971671dbcbb7493e5a6a15ad2825f4e359b02c27c38297/torch-2.14.0-cp312-cp312-macosx_14_0_arm64.whl",
        using: :nounzip
    sha256 "c1f844f1c750e87df4b68bc3afbc0e2b0c7ef19d7b8f666e48bdcf6a0c4f0056"
  end

  resource "addict" do
    url "https://files.pythonhosted.org/packages/85/ef/fd7649da8af11d93979831e8f1f8097e85e82d5bfeabc8c68b39175d8e75/addict-2.4.0.tar.gz"
    sha256 "b3b2210e0e067a281f5646c8c5db92e99b7231ea8b0eb5f74dbdf9e259d4e494"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/9a/8e/82a0fe20a541c03148528be8cac2408564a6c9a0cc7e9171802bc1d26985/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/b2/51899539b6ceeeb420d40ed3cd4b7a40519404f9baf3d4ac99dc413a834b/babel-2.18.0.tar.gz"
    sha256 "b80b99a14bd085fcacfa15c9165f651fbb3406e66cc603abf11c5750937c992d"
  end

  resource "blis" do
    url "https://files.pythonhosted.org/packages/d0/d0/d8cc8c9a4488a787e7fa430f6055e5bd1ddb22c340a751d9e901b82e2efe/blis-1.3.3.tar.gz"
    sha256 "034d4560ff3cc43e8aa37e188451b0440e3261d989bb8a42ceee865607715ecd"
  end

  resource "catalogue" do
    url "https://files.pythonhosted.org/packages/38/b4/244d58127e1cdf04cf2dc7d9566f0d24ef01d5ce21811bab088ecc62b5ea/catalogue-2.0.10.tar.gz"
    sha256 "4f56daa940913d3f09d589c191c74e5a6d51762b3a9e37dd53b7437afd6cda15"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "cloudpathlib" do
    url "https://files.pythonhosted.org/packages/07/9f/1791893f3d51ec36cd9e3f8da0130d278ee909a68bc17c83b3b3de98c91b/cloudpathlib-0.25.0.tar.gz"
    sha256 "63612e17778c5e3a51b472def8d785d0aaaf347486d6b6786dc7be627556d4c6"
  end

  resource "cloudpickle" do
    url "https://files.pythonhosted.org/packages/88/39/799be3f2f0f38cc727ee3b4f1445fe6d5e4133064ec2e4115069418a5bb6/cloudpickle-3.1.2-py3-none-any.whl",
        using: :nounzip
    sha256 "9acb47f6afd73f60dc1df93bb801b472f05ff42fa6c84167d25cb206be1fbf4a"
  end

  resource "cn2an" do
    url "https://files.pythonhosted.org/packages/4e/07/b45328cc4a4b88adea7b24d84d82f569e362773d4a4b69aba6e2350b058a/cn2an-0.5.24.tar.gz"
    sha256 "c276cfc4b3c9e758214841de597502eb178de50b8da2633ed345564f90705f0e"
  end

  resource "confection" do
    url "https://files.pythonhosted.org/packages/ca/65/efd0fe8a936fc8ca2978cb7b82581fb20d901c6039e746a808f746b7647b/confection-1.3.3.tar.gz"
    sha256 "f0f6810d567ff73993fe74d218ca5e1ffb6a44fb03f391257fc5d033546cbfaa"
  end

  resource "csvw" do
    url "https://files.pythonhosted.org/packages/c5/f1/95a10e22505e84bf346dd8df41d9c6135aea564d83d8e39b79b0851ba4db/csvw-4.1.0.tar.gz"
    sha256 "bfe2b64442552b392577a8d30edf886510c8d05e665606fa5caa1508365fd700"
  end

  resource "curated-tokenizers" do
    url "https://files.pythonhosted.org/packages/6d/3c/5d98e3fdbae12a0079d5ac06849bce200dd0cbf88b404d4d0fef4f7e3860/curated_tokenizers-0.0.10.tar.gz"
    sha256 "1c2b506e9c49e999b41939d783e788e021de5586a66a594b222fc2592aa169cf"
  end

  resource "curated-transformers" do
    url "https://files.pythonhosted.org/packages/70/06/6c12c149a7f737dacc76b4c3949dbc7ff87d622567b86996896ae4d104aa/curated-transformers-0.1.1.tar.gz"
    sha256 "4671f03314df30efda2ec2b59bc7692ea34fcea44cb65382342c16684e8a2119"
  end

  resource "cymem" do
    url "https://files.pythonhosted.org/packages/c0/8f/2f0fbb32535c3731b7c2974c569fb9325e0a38ed5565a08e1139a3b71e82/cymem-2.0.13.tar.gz"
    sha256 "1c91a92ae8c7104275ac26bd4d29b08ccd3e7faff5893d3858cb6fadf1bc1588"
  end

  resource "dlinfo" do
    url "https://files.pythonhosted.org/packages/85/8e/8f2f94cd40af1b51e8e371a83b385d622170d42f98776441a6118f4dd682/dlinfo-2.0.0.tar.gz"
    sha256 "88a2bc04f51d01bc604cdc9eb1c3cc0bde89057532ca6a3e71a41f6235433e17"
  end

  resource "docopt" do
    url "https://files.pythonhosted.org/packages/a2/55/8f8cab2afd404cf578136ef2cc5dfb50baa1761b68c9da1fb1e4eed343c9/docopt-0.6.2.tar.gz"
    sha256 "49b3a825280bd66b3aa83585ef59c4a8c82f2c8a522dbe754a8bc8d08c85c491"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/35/f5/14097cca69f53794270d8c7970b48321636302affe3154c7e0ba114eeff9/filelock-4.0.7.tar.gz"
    sha256 "da5915714a70b55d167fdc7e251ad91302b0a36816fb574dfafae8f4f2c9bb21"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/77/cd/9be253869fc42e764de7f3dedd6969af7d44ff9c3375214a3442a6f3fc08/fsspec-2026.9.0.tar.gz"
    sha256 "0f08147951c8cb31d844c3547d631053b127863b60be04cf06e121333ee0e2fe"
  end

  resource "fugashi" do
    url "https://files.pythonhosted.org/packages/ee/ec/b2e5aeba9438551ee4ae5275e95da506a279f53432e618daa1d4bd14c7d5/fugashi-1.5.2.tar.gz"
    sha256 "a7959eab95bb37a6a934fc2314d3ff888664d11b88d0e1c596260a5785d5880e"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "hf-xet" do
    url "https://files.pythonhosted.org/packages/4b/69/55b8dcf636142ae660fec1869fcac14c4da2e8412e14d6eee1523be77e9f/hf_xet-1.6.0-cp38-abi3-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "f0906082d9932ae0c0057fa194041c22b4e2cdb46b2592ef3b91f020d62a081a"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/25/2a/484d112c0d8fc5f665d7b65137ac9cdb2953c982391598c3597968a12ee7/huggingface_hub-1.33.0.tar.gz"
    sha256 "367be21a201db9523eddf8aeac7048f2602c1b308691c97640d5e72ed188007e"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/54/4d/e940025e2ce31a8ce1202635910747e5a87cc3a6a6bb2d00973375014749/isodate-0.7.2.tar.gz"
    sha256 "4cd1aa0f43ca76f4a6c6c0292a85f40b35ec2e43e315b59f06e6d32171a953e6"
  end

  resource "jaconv" do
    url "https://files.pythonhosted.org/packages/91/0e/9fffaacda59bdfa479372c71d18d72968d2af5a36a5a2086b02a60124b98/jaconv-0.5.0.tar.gz"
    sha256 "53f6f968276846716f0f37100a6d5c7308cfa1e0c714eb41287d5bb09345c40f"
  end

  resource "jieba" do
    url "https://files.pythonhosted.org/packages/c6/cb/18eeb235f833b726522d7ebed54f2278ce28ba9438e3135ab0278d9792a2/jieba-0.42.1.tar.gz"
    sha256 "055ca12f62674fafed09427f176506079bc135638a14e23e25be909131928db2"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "joblib" do
    url "https://files.pythonhosted.org/packages/d5/1d/537ab090f302b838943a1b56497dd53059b9a9b46a074936470173a2e207/joblib-1.6.0.tar.gz"
    sha256 "2ccc96785b12046c08fd6d55839c12857831b54a3c1673ffadd2f04bfc4eda03"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/b3/fc/e067678238fa451312d4c62bf6e6cf5ec56375422aee02f9cb5f909b3047/jsonschema-4.26.0.tar.gz"
    sha256 "0c26707e2efad8aa1bfc5b7ce170f3fccc2e4918ff85989ba9ffa9facb2be326"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "kokoro" do
    url "https://files.pythonhosted.org/packages/e8/48/88b8cdf28b068d070195c2817175549dee48e7682e3ab8994bee5f69217e/kokoro-0.9.4.tar.gz"
    sha256 "fbf633262797f8cf46fdac3315cf9cade67dc8b762c0feccf334892772fb9ac4"
  end

  resource "language-tags" do
    url "https://files.pythonhosted.org/packages/39/d1/b37165bed9016c19e2cdecf4176fbd902a014fb8a87dd44415438e190969/language_tags-1.3.1.tar.gz"
    sha256 "b15f05505dad3ad296a1782d5a6083fd141309186094d1ab08095348f4203f37"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "misaki" do
    url "https://files.pythonhosted.org/packages/1a/c7/fb01370a76585b46595a01b52f18e65c8ba6d7a313a05e5d9fff0a8e1c69/misaki-0.9.4.tar.gz"
    sha256 "3960fa3e6de179a90ee8e628446a4a4f6b8c730b6e3410999cf396189f4d9c40"
  end

  resource "mojimoji" do
    url "https://files.pythonhosted.org/packages/08/fb/ee22357cd7622fb879fac575feaffc54469ed9a0c1d9073355b1ebc62b7f/mojimoji-0.0.13.tar.gz"
    sha256 "0e6d2fba22cc8bf132a5bdf3a964296d9287a618d09681a12868f0fd518e4230"
  end

  resource "mpmath" do
    url "https://files.pythonhosted.org/packages/e0/47/dd32fa426cc72114383ac549964eecb20ecfd886d1e5ccf5340b55b02f57/mpmath-1.3.0.tar.gz"
    sha256 "7a28eb2a9774d00c7bc92411c19a89209d5da7c4c9a9e227be8330a23a25b91f"
  end

  resource "murmurhash" do
    url "https://files.pythonhosted.org/packages/23/2e/88c147931ea9725d634840d538622e94122bceaf346233349b7b5c62964b/murmurhash-1.0.15.tar.gz"
    sha256 "58e2b27b7847f9e2a6edf10b47a8c8dd70a4705f45dccb7bf76aeadacf56ba01"
  end

  resource "networkx" do
    url "https://files.pythonhosted.org/packages/dc/76/3af777226b63a5e64a6b36b1ec5855c14e2b94a37096d4760e595fc43511/networkx-3.7.tar.gz"
    sha256 "fd77a511bd90f39f3d016351345b52cf5319b813bdca01de3f755d3cca62e96a"
  end

  resource "num2words" do
    url "https://files.pythonhosted.org/packages/f6/58/ad645bd38b4b648eb2fc2ba1b909398e54eb0cbb6a7dbd2b4953e38c9621/num2words-0.5.14.tar.gz"
    sha256 "b066ec18e56b6616a3b38086b5747daafbaa8868b226a36127e0451c0cf379c6"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/65/6e/09db70a523a96d25e115e71cc56a6f9031e7b8cd166c1ac8438307c14058/numpy-1.26.4.tar.gz"
    sha256 "2a02aba9ed12e4ac4eb3ea9421c420301a0c6460d9830d74a9df87efa4912010"
  end

  resource "ordered-set" do
    url "https://files.pythonhosted.org/packages/4c/ca/bfac8bc689799bcca4157e0e0ced07e70ce125193fc2e166d2e685b7e2fe/ordered-set-4.1.0.tar.gz"
    sha256 "694a8e44c87657c59292ede72891eb91d34131f6531463aab3009191c77364a8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "phonemizer-fork" do
    url "https://files.pythonhosted.org/packages/42/fa/9294d2f11890ca49d0bdac7a4da60cbe5686629bfd4987cae0ad75e051cc/phonemizer_fork-3.3.2.tar.gz"
    sha256 "10e16e827d0443b087062e21b55e805c00989cf1343b2e81e734cae5f6c0cf69"
  end

  resource "plac" do
    url "https://files.pythonhosted.org/packages/d6/5f/40553c01a1d1424118196e7c29defe40715fd5f56939b9c824aa480112cd/plac-1.4.7.tar.gz"
    sha256 "957ffbab8ea8ab8c0b9f2694daa2a95f3560151cd162bcbc91e97ff94d45c4f9"
  end

  resource "preshed" do
    url "https://files.pythonhosted.org/packages/8e/ce/cad5a8145881a771e6c0d002f2e585fc19b962f120860b54d32af5baa342/preshed-3.0.13-cp312-cp312-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "f05b08ce92399c0655b5e0eb5a1cc1f9e295703ed3aabdfaf6538dfa8ae23d57"
  end

  resource "proces" do
    url "https://files.pythonhosted.org/packages/2c/3d/4159b57736ced0fd22553226df20a985ef7655519c80ffcb8a9fb49ebeee/proces-0.1.7.tar.gz"
    sha256 "70a05d9e973dd685f7a9092c58be695a8181a411d63796c213232fd3fdc43775"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/53/ef/fc4f868f4e2cee79f863883abffceff107875f569b848507319842d2a681/pydantic-2.13.5.tar.gz"
    sha256 "51a9c5f7b2f8e636f04c6cada605d9b6a3bf1348fdf945a3d8869b19bba0ee08"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/af/f9/8a06bea35ef8daf588f707784c973a7046e0034c8d8cfb08828eeffb8b75/pydantic_core-2.46.5.tar.gz"
    sha256 "10416c15b8839ecc4ef4d0885da76da6fd0f67333a0eb8aff6d93c4b8f2910fc"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pyopenjtalk" do
    url "https://files.pythonhosted.org/packages/58/74/ccd31c696f047ba381f9b11a504bf1199756c3f30f3de64e3eeb83e10b4a/pyopenjtalk-0.4.1.tar.gz"
    sha256 "d5ada46f7fc2b52c1c79c273eb9668ff6ad7ab276a8db9d8be119ef93440f0dc"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/e4/11/b213bebff182584360cb8d17c72c1677fec5c5c228de439e63bcf8ab1c8f/pyparsing-3.3.3.tar.gz"
    sha256 "928ae7e20211f3b6f3915a72f06a0cfd29ab9d24279dd6346b6b1a7146397d36"
  end

  resource "pypinyin" do
    url "https://files.pythonhosted.org/packages/b4/a4/784cf98c09e0dc22776b0d7d8a4a5b761218bcae4608c2416ce1e167c8af/pypinyin-0.55.0.tar.gz"
    sha256 "b5711b3a0c6f76e67408ec6b2e3c4987a3a806b7c528076e7c7b86fcf0eaa66b"
  end

  resource "pypinyin-dict" do
    url "https://files.pythonhosted.org/packages/64/7a/f56b7096cde930a65f8d5dc8cb726136d53c23175148f6aa1daa75419126/pypinyin_dict-0.9.0.tar.gz"
    sha256 "8c491396baa1567311f2ec759cbc154638f3bcefdc711d34e53e373e3a429fa5"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "rdflib" do
    url "https://files.pythonhosted.org/packages/98/f5/18bb77b7af9526add0c727a3b2048959847dc5fb030913e2918bf384fec3/rdflib-7.6.0.tar.gz"
    sha256 "6c831288d5e4a5a7ece85d0ccde9877d512a3d0f02d7c06455d00d6d0ea379df"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/fc/f2/af1da9d3ceed77bfcdce40427d49ba0be94e4fe84245e3bfef68c10e75b6/regex-2026.9.29.tar.gz"
    sha256 "8b5fcc4771732191b2b7d1dd68d8f0353f47f8d90b6150f6dce58bf1112442cb"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/79/30/5b1b6c28c105629cc12b33bdcbb0b11b5bb1880c6cfbd955f9e792921aa8/rfc3986-1.5.0.tar.gz"
    sha256 "270aaf10d87d0d4e095063c65bf3ddbc6ee3d0b226328ce21e036f946e421835"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/aa/2a/9618a122aeb2a169a28b03889a2995fe297588964333d4a7d67bdf46e147/rpds_py-2026.6.3.tar.gz"
    sha256 "1cebd1337c242e4ec2293e541f712b2da849b29f48f0c293684b71c0632625d4"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/45/06/f955dbbb1859e3bd23c8ac6141af5106e7ad5fedec4a3a6e3d60f94b7001/safetensors-0.8.0.tar.gz"
    sha256 "fabaf3e0f18a6618d9b36560682562157f77c2b71fcffc7b432be2baed9d753d"
  end

  resource "segments" do
    url "https://files.pythonhosted.org/packages/8b/57/85cac3a8e32370e88fa5fa92812edb6025db7fcbed51452bd56ee1524957/segments-2.4.0.tar.gz"
    sha256 "bba71f5520ddd54c8aa2f4d765a60618c6862162d6e7356a4a097f2223166f5b"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/6d/44/f5da03a8ef95d369145c5bb53050e7877c9f3d312e128605fd9504829143/setuptools-84.0.0.tar.gz"
    sha256 "f4695c21257f0d9b537ec2692c941d02ee143b7cc1276941349a546573b2ef73"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "smart-open" do
    url "https://files.pythonhosted.org/packages/6e/f1/f57ca3ddc7983173d4aa2df570393009d7572a91f7f54369de8d58675e9b/smart_open-8.0.2.tar.gz"
    sha256 "d5b5c85d2d31a6657bb18b3725856125f3b5be0ae3020c0fafa4649f6c493122"
  end

  resource "sounddevice" do
    url "https://files.pythonhosted.org/packages/ec/db/0c890e2d9aab9ba284021efc02e1d3aebfecab1b611762d7434602209bcf/sounddevice-0.5.6.tar.gz"
    sha256 "8ec9fbfde2e32f020b167e348f3ab3bac6625a5f15af524d790108ac7147a410"
  end

  resource "soundfile" do
    url "https://files.pythonhosted.org/packages/d2/db/949331952a6fb1c5b12e9de80fd08747966c2039d1a61db4764fbd3981c2/soundfile-0.14.0.tar.gz"
    sha256 "ba1c1a2d618bca5c406647c83b89f07cc8810fa506a50622a6993ba130c1de11"
  end

  resource "spacy" do
    url "https://files.pythonhosted.org/packages/69/5d/b0b4cd2f6e8a0470e50f7f0cfc1cea6e2f25572e97fb5d404c7941d5e88a/spacy-3.8.16.tar.gz"
    sha256 "a3d19da23637cc396b42d22fc33852680f675d8ddcb847d3e2a0d094712d1794"
  end

  resource "spacy-curated-transformers" do
    url "https://files.pythonhosted.org/packages/d8/b3/a4fd3cf28008cbe1d95463b5c76a0d9c8da7b9ad4f06289c2be4aae62052/spacy_curated_transformers-0.3.1.tar.gz"
    sha256 "7e53fccf64260e641b0a3f2b65b6d98381b86cef6eeb21ce279e8db849e8525d"
  end

  resource "spacy-legacy" do
    url "https://files.pythonhosted.org/packages/d9/79/91f9d7cc8db5642acad830dcc4b49ba65a7790152832c4eceb305e46d681/spacy-legacy-3.0.12.tar.gz"
    sha256 "b37d6e0c9b6e1d7ca1cf5bc7152ab64a4c4671f59c85adaf7a3fcb870357a774"
  end

  resource "spacy-loggers" do
    url "https://files.pythonhosted.org/packages/67/3d/926db774c9c98acf66cb4ed7faf6c377746f3e00b84b700d0868b95d0712/spacy-loggers-1.0.5.tar.gz"
    sha256 "d60b0bdbf915a60e516cc2e653baeff946f0cfc461b452d11a4d5458c6fe5f24"
  end

  resource "srsly" do
    url "https://files.pythonhosted.org/packages/4b/9b/a55dbb041cf2e44811323ea3fccada06acdd8dbc8ac856f224e0e093d428/srsly-2.5.4.tar.gz"
    sha256 "7589a35dd6bf1d177803c4ed454098f2f690b3704b80cca337a50be95ba59b3a"
  end

  resource "sympy" do
    url "https://files.pythonhosted.org/packages/83/d3/803453b36afefb7c2bb238361cd4ae6125a569b4db67cd9e79846ba2d68c/sympy-1.14.0.tar.gz"
    sha256 "d3d3fe8df1e5a0b42f0e7bdf50541697dbe7d23746e894990c030e2b05e72517"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/46/79/cf31d7a93a8fdc6aa0fbb665be84426a8c5a557d9240b6239e9e11e35fc5/termcolor-3.3.0.tar.gz"
    sha256 "348871ca648ec6a9a983a13ab626c0acce02f515b9e1983332b17af7979521c5"
  end

  resource "thinc" do
    url "https://files.pythonhosted.org/packages/13/46/76df95f2c327f9a9cef30c1523bf285627897097163584dcf5f77b2ebce2/thinc-8.3.13.tar.gz"
    sha256 "68e658549fc1eb3ff92aed5147fcbb9c15d6e9cc0e623b4d0998d16522ffb4f9"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/67/49/22da045a91732384d3a3771816bf188dc5a1f702c32e635afa7c679c0bef/tokenizers-0.23.2-cp310-abi3-macosx_11_0_arm64.whl",
        using: :nounzip
    sha256 "986670e43691469dcee610ea0f846f91a8f84e91fc6f7a48d4c064414c0ec2bf"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/0e/9e/750649904a065007a838981785b2bd8d9ff26154c6c341ac67d0b7f82c68/transformers-5.17.0.tar.gz"
    sha256 "a153be279169b55b92d8000bf4af294aed684503d091cca7804da2dd8a9de000"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/16/f7/57713ba479fd405eb76de31404b2c744c289e336b2d999511ebf51e496f7/typer-0.27.2.tar.gz"
    sha256 "269b7eb9d3c202ca84b4bc9618cb04ebb43d3d4d1e567e4c768607232c05f945"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/a3/26/b09b8010994eccc3c09092e6b34058f36a460eea2d4c3e8b910c695975a0/typing_inspection-0.4.4.tar.gz"
    sha256 "547274fa6b0a561ccf549cc9524b999a578e737d015d8709d021f9d0d13bea47"
  end

  resource "unidic" do
    url "https://files.pythonhosted.org/packages/5a/09/271dfbf8d5b56adddc70e30fa94249f5d3ab35f615bf278d65258045564a/unidic-1.1.0.tar.gz"
    sha256 "0ab91c05de342c84d2a6314901fd3afb9061ecd7534dd4a0431dccbb87d921b7"
  end

  resource "uritemplate" do
    url "https://files.pythonhosted.org/packages/98/60/f174043244c5306c9988380d2cb10009f91563fc4b31293d27e17201af56/uritemplate-4.2.0.tar.gz"
    sha256 "480c2ed180878955863323eea31b0ede668795de182617fef9c6ca09e6ec9d0e"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "wasabi" do
    url "https://files.pythonhosted.org/packages/69/41/0c31737ee1a29c8b829690ebb4ab988b1f489aa2c3efa115a732a9dd7997/wasabi-0.10.1.tar.gz"
    sha256 "c8e372781be19272942382b14d99314d175518d7822057cb7a97010c4259d249"
  end

  resource "weasel" do
    url "https://files.pythonhosted.org/packages/ce/e5/e272bb9a045105a1fdf4b798d8086f5932a178f4d738f17a74f5c9e0ae9a/weasel-1.0.0.tar.gz"
    sha256 "7b129b44c90cc543b760532974ca1e4eb30dad2aa2026f57bdce66354ae610fc"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/3e/d2/a254a26d8ceaea87e0eee2e89fcfe53ddc1858418647493bb2937549ab6f/wrapt-2.5.0.tar.gz"
    sha256 "c48cdb6c904dca76d9915a579e4a5fab6b0c25f650c1019ce78a78effaf7a345"
  end

  resource "en-core-web-sm" do
    url "https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.8.0/en_core_web_sm-3.8.0-py3-none-any.whl",
        using: :nounzip
    sha256 "1932429db727d4bff3deed6b34cfc05df17794f4a52eeb26cf8928f7c1a0fb85"
  end

  def install
    wheel_resources = %w[
      cloudpickle
      en-core-web-sm
      espeakng-loader
      hf-xet
      preshed
      tokenizers
      torch
    ]

    venv = virtualenv_create(libexec, "python3.12")

    resources.each do |resource|
      if wheel_resources.include?(resource.name)
        resource.stage do
          wheel = Pathname.glob("*.whl").first
          odie "Wheel not found for #{resource.name}" unless wheel

          venv.pip_install wheel
        end
      else
        venv.pip_install resource
      end
    end

    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "jaketts #{version}", shell_output("#{bin}/jtts -v")

    system libexec/"bin/python", "-c",
          "from kokoro import KPipeline; KPipeline(lang_code='b', model=False)"
  end
end
