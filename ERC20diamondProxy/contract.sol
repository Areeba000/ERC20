// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


contract ERC20 is IERC20{
     bytes32 internal constant ERC20NAMESPACE = keccak256('ERC20');

    function getERC20Storage() internal pure returns(ERC20DATA storage s) {
        bytes32 position = ERC20NAMESPACE;
        assembly {
            s.slot := position
        }
    }
    struct ERC20DATA {
        bool initialized;
        address owner;
        mapping(address => uint)  balanceOf;
        mapping(address => mapping(address => uint))  allowance;
        uint totalSupply;
        string  name ;
        string  symbol;
        uint8  decimals ;
    }
    function initializeERC20(string memory _name,string memory _symbol,uint8 _decimals) external  {
       ERC20DATA storage s = getERC20Storage();
        s.owner = msg.sender;
        
        s.initialized = true;
        s.name=_name;
        s.symbol=_symbol;
        s.decimals=_decimals;
    
    }
   
    modifier  onlyowner{
        ERC20DATA storage s = getERC20Storage();
        require(s.owner==msg.sender,"you are not owner");
        _;
    }

    function transfer(address recipient, uint amount) external returns(bool) {
        ERC20DATA storage s = getERC20Storage();
        s.balanceOf[msg.sender] -= amount;
        s.balanceOf[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    function approve(address spender, uint amount) external returns (bool) {
        ERC20DATA storage s = getERC20Storage();
        s.allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address sender,address recipient,  uint amount ) external returns (bool) {
       ERC20DATA storage s = getERC20Storage();
       s.allowance[sender][msg.sender] -= amount;
       s.balanceOf[sender] -= amount;
       s.balanceOf[recipient] += amount;
       emit Transfer(sender, recipient, amount);
       return true;
    }

    function mint(address account,uint256 amount) external onlyowner {
        ERC20DATA storage s = getERC20Storage();
        require(account != address(0), "ERC20: mint to the zero address");
        s.totalSupply += amount;
        s.balanceOf[account] += amount;
        emit Transfer(address(0), msg.sender, amount);
    }

    function burn(address account,uint256 amount) external onlyowner {
        ERC20DATA storage s = getERC20Storage();
        require(account != address(0), "ERC20: mint to the zero address");
        s.balanceOf[account] -= amount;
        s.totalSupply -= amount;
        emit Transfer(msg.sender, address(0), amount);
    }
    function allowancefun(address _owner, address _spender) external view returns (uint256){
        ERC20DATA storage s = getERC20Storage();
        return s.allowance[_spender][_owner];
    } 
    function getbalanceOf(address _owner) external view returns (uint256){
        ERC20DATA storage s = getERC20Storage();
        return  s.balanceOf[_owner];
    }function totalSupply() external view returns (uint256) {
        ERC20DATA storage s = getERC20Storage();
        return s.totalSupply;
    }

   function balanceOf(address account) external view returns (uint256) {
       ERC20DATA storage s = getERC20Storage();
       return  s.balanceOf[account];
   }

   function allowance(address owner, address spender) external view returns (uint256) {
    ERC20DATA storage s = getERC20Storage();
    return s.allowance[owner][spender];
   }

}
