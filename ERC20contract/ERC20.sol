// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address _owner) external view returns (uint256);
   function allowance(address _owner, address _spender) external view returns (uint256);

    function transfer(address _to, uint256 _value) external returns (bool);
   function approve(address _spender, uint256 _value) external returns (bool);
   function transferFrom(address _from, address _to, uint256 _value) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
contract MYERC20token is IERC20 {
    mapping (address => uint256)public _balance;
    mapping(address=>mapping(address =>uint256))public _allowed;
    string public name="abeertraining";
    string public symbol ="cat";
    uint public decimals=0;
    uint256 private _totalsupply;
    address public _creator;
    constructor () public{
        _creator=msg.sender;
        _totalsupply=50000;
        _balance[_creator]=_totalsupply;
          
    }
    function totalSupply() external view returns (uint256){
        return _totalsupply;
    }
    function balanceOf(address _owner) external view returns (uint256){
        return _balance[_owner];
    }
    function transfer(address _to, uint256 _value) external returns (bool){
       require(_value>0 && _balance[msg.sender]>=_value);
        _balance [_to]+=_value;
        _balance[msg.sender]-=_value;
    
    emit Transfer(msg.sender,  _to,_value);
return true;
    }
    function approve(address _spender, uint256 _value)  public returns (bool){
require(_value>0 && _balance[msg.sender]>=_value);
_allowed[msg.sender][_spender]=_value;
 emit Approval(msg.sender,  _spender, _value);
 return true;
}
function transferFrom(address _from, address _to, uint256 _value) external returns (bool){
     require(_value>0 && _balance[_from]>=_value &&  _allowed[_from][_to]>=_value);
        _balance [_to]+=_value;
        _balance[_from]-=_value;
    _allowed[_from][_to]=_value;
return true;
}
function allowance(address _owner, address _spender) external view returns (uint256){
return _allowed[_spender][_owner];
}  
  }