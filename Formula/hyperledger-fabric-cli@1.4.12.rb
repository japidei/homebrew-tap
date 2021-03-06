class HyperledgerFabricCliAT1412 < Formula
  desc "Hyperledger Fabric is an enterprise-grade permissioned distributed ledger"
  homepage "https://www.hyperledger.org/use/fabric"
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v2.4.3.tar.gz"
  version "1.4.12"
  sha256 "117ab5f6d4433c6094c1c136a73014897dea86e0411b42d3c2b60bc36713dc45"
  license "Apache-2.0"

  def install
    system "./scripts/bootstrap.sh", "1.4.12", "-d", "-s"
    bin.install "bin/configtxgen"
    bin.install "bin/configtxlator"
    bin.install "bin/cryptogen"
    bin.install "bin/discover"
    bin.install "bin/fabric-ca-client"
    bin.install "bin/fabric-ca-server"
    bin.install "bin/idemixgen"
    bin.install "bin/orderer"
    bin.install "bin/peer"
  end

  test do
    system "test", "-e", "#{bin}/configtxgen"
    system "test", "-e", "#{bin}/configtxlator"
    system "test", "-e", "#{bin}/cryptogen"
    system "test", "-e", "#{bin}/discover"
    system "test", "-e", "#{bin}/fabric-ca-client"
    system "test", "-e", "#{bin}/fabric-ca-server"
    system "test", "-e", "#{bin}/idemixgen"
    system "test", "-e", "#{bin}/orderer"
    system "test", "-e", "#{bin}/peer"
  end
end
