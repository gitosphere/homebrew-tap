cask "gsp" do
  version "0.5.1"
  sha256 "e431d64d6361b7f9b3eae9926b59d10f5f63e2ffb84d8a1b6c52980c9c4fa7b1"

  url "https://github.com/gitosphere/gsp/releases/download/#{version}/gsp-#{version}-macos-arm64.dmg"
  name "Gitosphere CLI"
  desc "Official command-line interface for Gitosphere"
  homepage "https://github.com/gitosphere/gsp"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  binary "bin/gsp"
  bash_completion "completions/gsp.bash"
  fish_completion "completions/gsp.fish"
  zsh_completion "completions/_gsp"
  artifact "skills/gsp", target: "#{HOMEBREW_PREFIX}/share/gsp/skills/gsp"
  artifact "docs", target: "#{HOMEBREW_PREFIX}/share/gsp/docs"
end
