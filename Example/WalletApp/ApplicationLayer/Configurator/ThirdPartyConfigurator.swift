import WalletConnectNetworking
import Web3Wallet
import WalletConnectPush

struct ThirdPartyConfigurator: Configurator {

    func configure() {
        Networking.configure(projectId: InputConfig.projectId, socketFactory: DefaultSocketFactory())

        let metadata = AppMetadata(
            name: "Example Wallet",
            description: "wallet description",
            url: "example.wallet",
            icons: ["https://avatars.githubusercontent.com/u/37784886"],
            verifyUrl: "verify.walletconnect.com"
        )
        
        Web3Wallet.configure(metadata: metadata, crypto: DefaultCryptoProvider(), environment: BuildConfiguration.shared.apnsEnvironment)
        Push.configure(environment: BuildConfiguration.shared.apnsEnvironment)
    }
    
}


