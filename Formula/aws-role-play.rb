class AwsRolePlay < Formula
  include Language::Python::Virtualenv

  desc 'A CLI tool that makes assuming IAM roles and exporting temporary credentials easier'
  homepage ''
  url 'https://github.com/rewindio/aws-role-play/archive/refs/tags/0.2.1.tar.gz'
  sha256 'acf30a37a5a32fc6a67f57dbda806cae12a638250c5296c6ed1e5329c382aaf1'
  version '0.2.1'
  license 'MIT'

  depends_on 'python@3.9'

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/21/83/308a74ca1104fe1e3197d31693a7a2db67c2d4e668f20f43a2fca491f9f7/click-8.0.1.tar.gz'
    sha256 '8c04c11192119b1ef78ea049e0a6f0463e4c48ef00a30160c704337586f3ad7a'
  end

  resource 'boto3' do
    url 'https://files.pythonhosted.org/packages/fa/d8/a677b94a9982b3e0dd1997dcb6aa0be174169af238fe4836d58a447412cf/boto3-1.18.3.tar.gz'
    sha256 '13e60f88d13161df951d6e52bd483cdbe1a36a31f818746289d8ba0879465710'
  end

  resource 'botocore' do
    url 'https://files.pythonhosted.org/packages/1b/88/90cc742609dc5a0d0815ea5b13dc9b96fe8ce1cc6c099765c80864746899/botocore-1.21.3.tar.gz'
    sha256 '0b6f378c9efbc72eee61aba1e16cab90bde53a37bd2d861f6435552fd7030adf'
  end

  resource 'jmespath' do
    url 'https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz'
    sha256 'b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9'
  end

  resource 'python-dateutil' do
    url 'https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz'
    sha256 '0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86'
  end

  resource 's3transfer' do
    url 'https://files.pythonhosted.org/packages/88/ef/4d1b3f52ae20a7e72151fde5c9f254cd83f8a49047351f34006e517e1655/s3transfer-0.5.0.tar.gz'
    sha256 '50ed823e1dc5868ad40c8dc92072f757aa0e653a192845c94a3b676f4a62da4c'
  end

  resource 'six' do
    url 'https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz'
    sha256 '1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/4f/5a/597ef5911cb8919efe4d86206aa8b2658616d676a7088f0825ca08bd7cb8/urllib3-1.26.6.tar.gz'
    sha256 'f57b4c16c62fa2760b7e3d97c35b255512fb6b59a259730f36ba32ce9f8e342f'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    cmd_output = shell_output("#{bin}/aws-role-play --version")
    assert_match "aws-role-play v#{version}", cmd_output
  end
end
