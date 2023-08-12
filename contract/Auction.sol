// SPDX-License-Identifier: MIT

pragma solidity >=0.8.21;

contract Auction{
    mapping(address => uint) public biddersdata;
    function putbid()public payable{
        require(msg.value>0 ,"bid cannot be zero");
        biddersdata[msg.sender]=msg.value;
    }

    
    function getbidderbid(address _address)public view returns(uint){
     return biddersdata[_address];
    }


}