# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{freckle}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dieter Komendera"]
  s.date = %q{2009-01-13}
  s.default_executable = %q{freckle}
  s.description = %q{FIX (describe your package)}
  s.email = ["dieter@abloom.at"]
  s.executables = ["freckle"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/COMMIT_EDITMSG", ".git/FETCH_HEAD", ".git/HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg.sample", ".git/hooks/commit-msg.sample", ".git/hooks/post-commit.sample", ".git/hooks/post-receive.sample", ".git/hooks/post-update.sample", ".git/hooks/pre-applypatch.sample", ".git/hooks/pre-commit.sample", ".git/hooks/pre-rebase.sample", ".git/hooks/prepare-commit-msg.sample", ".git/hooks/update.sample", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/master", ".git/objects/01/0b70bdc26b5c33a29791fb47fac7d0d4a4f36c", ".git/objects/04/69f69afc952200a66a41daecd17e9530becaed", ".git/objects/04/b7936495829bd3d4e6a5805a66bd9e01c0eda6", ".git/objects/08/0840e6a1a2244a69afaa5d77f9279d36052c05", ".git/objects/08/65a4b5b21fdf0a2cbbbf0001c3f53f0c20d2dd", ".git/objects/08/91677c22ade0f19de0263dc6b85479f5439a6c", ".git/objects/0b/2da3e17c999f4d968ea8de3a0c0978429ba076", ".git/objects/12/c6ce5a296e7b5137ca11a6b628cd44637ec765", ".git/objects/13/c10f6f2a701093b30ae4c556dc9b474adbe5ba", ".git/objects/1a/050ca92069b4ee877134ee1d3da40f8dd5a9e0", ".git/objects/1f/26679594402c7d0b073276bb64479127b124f0", ".git/objects/21/8b9b947a0acbe2048d5d3755dedfe4dee0aaad", ".git/objects/23/85e1745bd7eec911c4ba5dd0235b716c6a96f8", ".git/objects/27/d23609a1226f5b080fc3b0fa5499c959a4e644", ".git/objects/2b/136bf815fb76760344471fd0474773070c825b", ".git/objects/2c/18e491a4c2eb28bd1e33f3b53d093f3f31d1f0", ".git/objects/2f/8e7805582a0e184c9d430b715056b9af0655eb", ".git/objects/30/94c14f9022c5e2651027c97cb53224e8ff1798", ".git/objects/32/1e330c7e3b062f39ec12dfb2b2ef37ec9075a5", ".git/objects/33/8bd73281d6d467863352f03543a4ebb999bba1", ".git/objects/33/ac43674ef583e0142cbf1fbf7ab3df5321bf00", ".git/objects/36/6ac63f2b70e1d335249f80cb554ce114241b24", ".git/objects/36/e9bed0d52ce1c9c56e119d5732c166d89313ac", ".git/objects/38/d40d9ddf1002288f7eed086abcbe8a4a4a854a", ".git/objects/3c/230e4106b9d790c87804ce8456870033d9afc1", ".git/objects/3c/4741b80757273f5b6d67bd19c9c9da56cebb7b", ".git/objects/3c/d3fe67ff7e0e925d5a05ccdada9e002508c006", ".git/objects/42/374442f99492e6d7fe91b04dca7b8329a2769b", ".git/objects/43/57b4a6eb77fe8aa87f149d81c23f91fab1ec84", ".git/objects/4b/615a2e9470957024c4cadd6a8799e48fa826f8", ".git/objects/4c/286ce7eef15e40bcae90bb6fbe68255fcc35de", ".git/objects/4c/3c9571c37e395f0cc2be468e10b947f3a7f0a7", ".git/objects/4d/ff3404c1be2f66c75be49161d1c055d777adf8", ".git/objects/55/cf42b61032a7652bab174e6b27433d30ed626c", ".git/objects/5b/1140dbbde96ad307565005b5bca0673449e44f", ".git/objects/5c/018c530f4a205fe7a26fc2c16c13cf47c5a4ff", ".git/objects/5c/d5987aaf49b075164563fa17a59dcfb1bacd0b", ".git/objects/5c/df5a9e9080d746d5f406843c49b6d417750e5d", ".git/objects/5d/21340924ce4c8335290cc1ff7cdee3e0e07111", ".git/objects/5f/69c914a693334621d2154fb0b7a4ac0c319ffa", ".git/objects/61/0b464e83aa40d83a96b1b0e00e43e77d185b89", ".git/objects/62/aaa21dc2ab0ad5be1ce62671215dcd1740961f", ".git/objects/63/7fe21de6ed94a98c26df6b1eeb326862b06534", ".git/objects/64/092c6ecfbbedbfc7d0e4f792e747b1b39f074e", ".git/objects/65/1a461f2433b8612b453fbfcd55f4e316ac3410", ".git/objects/66/1f6f5be90ff861f8bba1efb938701fd1823ab6", ".git/objects/6b/43bb55c14859519e5bcdfaf24d5b24dc869697", ".git/objects/6f/8e64c26b4ce98080f33059e02c539a00c47aa6", ".git/objects/72/4b873b1f695d0a0d00b387e5607a2d748f1448", ".git/objects/74/b0b6e49b1df226757ae2794cbfccfaed11cd14", ".git/objects/75/6e5ead04870c3f7276e11ee7a0da6271492b34", ".git/objects/7f/14762e52817ba6d65bdd630e3bfa3d41cd421f", ".git/objects/89/cbc88979f567cd8e728c4e0d789cbf0778b869", ".git/objects/8b/055bda597d81a2536bf7ae84d416fda670cb56", ".git/objects/92/14e4c3d52a63800afe7f1fc6aba54fa30157b6", ".git/objects/93/39207b568f65a4a23791970b8b890cdfc6dd12", ".git/objects/96/556af1b7c044b411fdd87fa30addb64beeb410", ".git/objects/96/7d33ae97c5be10ecbb5ef2612180c32edc36e0", ".git/objects/99/499eedbb11b5ed06738c8621629a574922f81b", ".git/objects/9b/3cd34b5e439693d3b9a4c7879d291f28dacb15", ".git/objects/9c/bbd83bca74a96eef9ec71c15c577f13ae50fc2", ".git/objects/9c/ea9cb67266d5bf9d4bac0ff0403e98cf6b10ad", ".git/objects/9f/764cde43dd514febd61312b724c24352d092ad", ".git/objects/a1/961b088b9290f9e8e83fc80ecb460243985eeb", ".git/objects/a1/ffc5705b5800e07cf3608dace5353429cc8ce3", ".git/objects/a5/1dff960413174ca66d56720332fac7d35cf91d", ".git/objects/a6/99e37e517513a9ad594f8b22fdf82717b9a107", ".git/objects/a6/e10e578605462450ef0108085268378c7b3616", ".git/objects/a9/1857539b4319fe67414403baa2a5616521652a", ".git/objects/aa/9b12635a0024dc3b236c92279f93693a379596", ".git/objects/ad/968e50d910cb655c68ce89df2ef1efe690d8a8", ".git/objects/ae/51a74dfee1e09058d187dddf40a6e4859c7ff9", ".git/objects/ae/b13d99f9e467befbad3b01af97edeecda5a661", ".git/objects/ae/dbca5be4c5b2905b7484976488329d7bda84db", ".git/objects/b0/85f56e40637970a9fd1ace6f8c750f59e31cbf", ".git/objects/b0/e8046ea4cc7677133d17f5b0a3616824f4c20e", ".git/objects/b1/5161d31f6f5864806867b9d13be7c1ff7de630", ".git/objects/b3/818c920a776f5034ad82604d3f4312522aac7e", ".git/objects/b6/04333757a69ccc45c4253a8998250fcd4b816a", ".git/objects/b9/0e4ce94536b07e07c4324e9f4d1568251805d3", ".git/objects/ba/a44617fffd4bc776c44820c805b3ad48e293a0", ".git/objects/bc/eb810ace0b4263d3f88ee8502ff0a5e6ed1406", ".git/objects/c2/62bc979aead12105170f76587c4b35e6e4125c", ".git/objects/c2/7f6559350f7adb19d43742b55b2f91d07b6550", ".git/objects/c5/82ebfcf9018c3b3fccba33829f7709344fd155", ".git/objects/c5/98a2bde230deb8d8f68bb99dec3abf8fa1ed3e", ".git/objects/c6/c34b7ab59fae998062f870c73462f75addbc42", ".git/objects/c8/59574245d99bb51b80526959733f2ea7fa1e84", ".git/objects/ca/f79ed9bbf089ae248bc423fe95546b5c20ab59", ".git/objects/cb/b9dd0792111fcdbd169b27299f17400c91f4f4", ".git/objects/cf/aa0a226a55466d824152a3207888b9ab4518cb", ".git/objects/d1/c218bfe39e3f364e2de13ca5a199b66cdf651b", ".git/objects/d2/86890682e7fa0e9d824011f2220e8f2d1da819", ".git/objects/d4/b7a6b7ff6e678676900aa5496e80d71de762e8", ".git/objects/d5/82fcb852e0cbcc15e511c46bbf9d367418cbb6", ".git/objects/d7/e22e9d3812ed813e8e319ad9c82fa7cb705c46", ".git/objects/d8/108297894a1c9654484d4387aa2cb47dc9863a", ".git/objects/df/5cc38a6279b134daf969b2d5d828fc6aec2a1e", ".git/objects/e0/9cd3481f71b74c3e0ef14ccb70d77186e8f56e", ".git/objects/e1/4b621ddf735de56f5f5431fc3de7fc8694b2b7", ".git/objects/e3/2186d1517ef6c52998a3fede21d56957c3e900", ".git/objects/e3/46d52a6e258c9d451fb9156b83942e753ceeee", ".git/objects/e4/8464df56bf487e96e21ea99487330266dae3c9", ".git/objects/e5/384c7a209ac926c73e5a5c8aabd49e33892419", ".git/objects/e8/df8c3a1b0e74784b20bb2466d6bb80fa3f6813", ".git/objects/ee/74d30e45fd17ad0f5770f61cfad83ffefedd69", ".git/objects/ef/30cd0f2dc003eab4a0d6cba682c4574664263a", ".git/objects/ef/c0ab54b7e579c2b9643c0d44a020250c533aa5", ".git/objects/ef/e55b88a0cf50b58b32787b16ead4f364ce42d7", ".git/objects/f0/3c620952406b07d885ed321e184591035b5b84", ".git/objects/f0/d0d159ea17ec9b75ad262e41190cace9847a52", ".git/objects/f2/52b6d1ab3342ab9438628be5466a2ccc8840a6", ".git/objects/f4/bd88b3c605460c3ab2f0fd826e95b906a1d1f5", ".git/objects/f4/ecf6da6f7312e7d2d0237036977cba5f777441", ".git/objects/f8/e021dd9f5f629995e4d68f7ef0b8950e6d2dfc", ".git/objects/fc/055944a8c2dc74cdfa0e66f8c6c9f40b581d8e", ".git/objects/fc/167bc6d84241b31955f02fe3ca12e326a77adb", ".git/objects/fc/bf1a2b0ef2e44e09159ba7e3284b356f121472", ".git/objects/fd/3a354776efb4f3e058c49ecb4075276382966e", ".git/objects/ff/1e5bdfdc819c148f1479c1d4e7cf11a2ab7567", ".git/refs/heads/master", ".git/refs/remotes/origin/master", "History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "bin/freckle", "freckle.gemspec", "lib/freckle.rb", "lib/freckle/app_config.rb", "lib/freckle/cli.rb", "lib/freckle/entry.rb", "lib/freckle/project.rb", "script/console", "script/destroy", "script/generate", "test/entry_test.rb", "test/project_test.rb", "test/test_freckle_cli.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{FIX (url)}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{freckle}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{FIX (describe your package)}
  s.test_files = ["test/test_freckle_cli.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.1.3"])
      s.add_runtime_dependency(%q<activeresource>, [">= 2.2.2"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<json>, [">= 1.1.3"])
      s.add_dependency(%q<activeresource>, [">= 2.2.2"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.1.3"])
    s.add_dependency(%q<activeresource>, [">= 2.2.2"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
