**Simple smart contract on Solidity**

1. Install Metamask or any similar crypto wallet
2. Open Remix at https://remix.ethereum.org/
3. Create file "SimpleSmartContract.sol" anywhere on the Remix directory
4. Copy these code into the file and save it as Message.sol (or any name you want with the extension .sol)
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
 
contract Message {
  string private message; 
   
  function getMessage() public view returns (string memory) {
      return message;
  }
 
  function setMessage(string memory _message) public {
      message = _message;
  }
}
```
5. Go to the "Solidity Compiler". Here you can activate the option "Auto compile" so whenever you edit the file, it will try to compile and look for errors if there is any. If everything is OK, you should see a green ticket over the left side bar icon at "Solidity Compiler".
6. Now you should be ready to deploy, so go to the "Deploy & Run Transactions" tab at the left sidebar
7. Here are different ways to continue setting the "Environment" option: 
    * (1) You can build a local environment for offline testing, 
    * (2) You can connect your wallet with testnet funds to test online, or 
    * (3) You can deploy directly to the mainnet using real funds (Not recommended for beginners). So I recommend trying local first and then using the testnet for more real implementations.
7. We will go to "Environment" section inside the same tab and select "Injected Provider - Metamask" or similar wallet. You can also use Wallet Connect. Once you select the option it will ask you to connect your wallet and it will show your account address under the Address section.
8. Click Deploy and if everything is OK, wait until the block is mined and you will see in the console a green ticket showing it was correctly deployed.
9. In the same tab, go to the "Deployed Contracts" sections and you will see a new contract under it. There you can copy the contract address and use the methods defined on the code to get the saved Message or set a new Message.

So that's it, you made your first Smart Contract. Now you can check it on Etherscan using the contract address and there are different ways to interact with it.
