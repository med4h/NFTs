pragma solidity ^0.8.24;

contract NFTCollection is ERC721URIStorage {
    using Counters for Counters.Counter; 
    constructor() ERC721('PSINFTCollection','PSI') {}

    function mint(string memory tokenURI)
    public
    returns(uint256)
    {
        _tokenids.incrament(); 
        uint256 newItemId = _tokenids.current();
        _mint(msg.sender,newItemId);
        _setTokenURI(newItemId,tokenURI);
        return newItemId;
    }
}