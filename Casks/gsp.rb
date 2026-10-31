cask "gsp" do
  version "0.12.0"
  sha256 "c38a42cf82bcb163d659675c2ecf33dd81be62507fa7c2ff829393d1763f6ea2"

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
