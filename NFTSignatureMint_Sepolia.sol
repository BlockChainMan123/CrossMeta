pragma solidity ^0.8.14;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "hardhat/console.sol";

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import "@openzeppelin/contracts/interfaces/IERC1271.sol";


contract SignatureNFT is ERC721 {
    address immutable public signer; // Signer's address
    mapping(address => bool) public mintedAddress;   // recode these address whose have minted NFT 
    //the 1st signture
    bytes public signaturevalue_0 = hex"85eb3bf31dcf31a68b7f29eadf99c8b7116b6f59db3e9bbe488c56df79e1fbc867ed4caa95a2b3e338707b278f9456ebe18d8a59b9bdd5845bbf855f47691a001c";
    //the 2nd signture
    bytes public signaturevalue_1 = hex"df2348c7c6dfa32dc1325f47b911a33e891c0831e4b2fcb028b34d4c00f7c17e2d0b9b7f297416229f649c009d4f506f815f608d4d4725e9fea0af58fd3683c21c";
    //the 3rd signture
    bytes public signaturevalue_2 = hex"7e43294c4de4e93d277d847aab16764895c8fe17695c782eaeb45879a977b6ce56e8319e8c8d4c6ce1727dc9b9f764f8d32df561696a43a3fff00b032bee887c1c";
    //the 4th signture
    bytes public signaturevalue_3 = hex"70d9c2a7679e55dfa94a097ea2c2dd0d0fcfd74eeb4cbc835efec7e0d0a8c5926deb781d21a7298b20900b67fc69217a1409b4c1d44f04a435d70ac70420b4591c";
    //the 5th signture
    bytes public signaturevalue_4 = hex"c2773ffa4a94bb9a7ed45a5b746f489800044be7dc8cf387c2b4c86e6ef0bffa211b10c20c01348d40f124388d90099138b81433b0491dfe00e754ff646433fa1c";
    //the 6th signture
    bytes public signaturevalue_5 = hex"cf7451134060133351ed5987d2f2333ae53fee8f751d88e3f75dbf85ba680c196a72a1771a0ec9e17fd26a2a5c23c900b4f5981fb5e81d5a19e7b0997fc70d871b";
    //the 7th signture
    bytes public signaturevalue_6 = hex"618bfaee24f927b83a496117df3059621eb5a069f54a19c4fd107f6b34432d6d5b5b881734e6407af4c7e4fe9a11c6cf60b59e7d86ab067307f2f96b16e6ee651b";
    //the 8th signture
    bytes public signaturevalue_7 = hex"67219eb9a8817a44967915753dd11621b55f25de4d5a4323fc8e6fcbd0bd73f31ee7b00a48c379a57bd35ad18c823c86d735ca2e9819cc4c57fa2f2018021fbe1b";
    //the 9th signture
    bytes public signaturevalue_8 = hex"4c69b85c14f54db71ef08fac76972c1ef0a73cb28b4ab6f02994409d0bae34136dab33a24f33481d3fc6fffed9bcfe17cc648d6194f336ecdb0e693df5ef734b1c";
    //the 10th signture
    bytes public signaturevalue_9 = hex"5d3364824fd5da1ad9b823f33f8b24d89c6339a4c439ddbe0e27abccace92f505c3761953653afd6abdf767114694186788c3deb257c2b0afd07cf7e557364241c";
    
    
    //The set of signer
    address[10] public signer_set = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 
                                    0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,
                                    0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db,
                                    0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,
                                    0x617F2E2fD72FD9D5503197092aC168c91465E7f2,
                                    0x17F6AD8Ef982297579C203069C1DbfFE4348c372,
                                    0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678,
                                    0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7,
                                    0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C,
                                    0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC];

    // constructor function，initiate the name and sybmol of NFT, signer's address
    constructor(string memory _name, string memory _symbol, address _signer)
    ERC721(_name, _symbol)
    {
        signer = _signer;
    } 

    // Mint and verify ECDSA signature
    function mint(address _account, uint256 _tokenId, uint256 n)
    external
    {
        for(uint256 i = 0; i < n; i++)
        { 
        require(verify(signer_set[0], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_0), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[1], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_1), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[2], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_2), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[3], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_3), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[4], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_4), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[5], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_5), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[6], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_6), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[7], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_7), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[8], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_8), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[9], ethSignedMessageHash(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 789), signaturevalue_9), "Invalid signature"); // The verification of ECDSA passed
        }
         _mint(_account, _tokenId); // Mint
         mintedAddress[_account] = true; // Recode the address whose have minted NFT
    }

    //temporarily staking NFT from "from" to "to"
    function stakingNFT(address from, address to, uint256 tokenId)
        external
    {
        //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");
        _transfer(from, to, tokenId);
    }

    //permanently staking NFT from "from" to "to"
    function finalize_stakingNFT(address to, uint256 tokenId, address _account, uint256 _tokenId)
    external
    {
        //validate the proof submitted by committee observing the tx_create occurred on metaverse #Beta
        bytes32 _msgHash = getMessageHash(_account, _tokenId); // Packet _account with _tokenId
        bytes32 _ethSignedMessageHash = ECDSA.toEthSignedMessageHash(_msgHash); // Compute Ethereum signature massage
        require(verify(signer_set[0], _ethSignedMessageHash, signaturevalue_0), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[1], _ethSignedMessageHash, signaturevalue_1), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[2], _ethSignedMessageHash, signaturevalue_2), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[3], _ethSignedMessageHash, signaturevalue_3), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[4], _ethSignedMessageHash, signaturevalue_4), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[5], _ethSignedMessageHash, signaturevalue_5), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[6], _ethSignedMessageHash, signaturevalue_6), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[7], _ethSignedMessageHash, signaturevalue_7), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[8], _ethSignedMessageHash, signaturevalue_8), "Invalid signature"); // The verification of ECDSA passed
        require(verify(signer_set[9], _ethSignedMessageHash, signaturevalue_9), "Invalid signature"); // The verification of ECDSA passed
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");
        _approve(to, tokenId);// Approve stakingNFT to another address formally
    }


    function getMessageHash(address _account, uint256 _tokenId) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_account, _tokenId));
    }

    function ethSignedMessageHash(address _account, uint256 _tokenId) public pure returns(bytes32){
        bytes32 _msgHash = getMessageHash(_account, _tokenId); // Packet _account with _tokenId
        //bytes32 _ethSignedMessageHash = ECDSA.toEthSignedMessageHash(_msgHash); // Compute Ethereum signature massage
        return ECDSA.toEthSignedMessageHash(_msgHash);
    }
 
    // ECDSA verification, invoke the isValidSignatureNow() function of the SignatureChecker library
    function verify(address signer_person, bytes32 _msgHash, bytes memory _signature)
    public view returns (bool)
    {
        return SignatureChecker.isValidSignatureNow(signer_person, _msgHash, _signature);
    }

    // Create and move NFT-derivative to another addtress such Alice
    function mint_Beta_metaverse(address _account, uint256 _tokenId)
    external
    {
         _mint(_account, _tokenId); // Mint 
         mintedAddress[_account] = true; // Recode the address whose have minted NFT
    }
}