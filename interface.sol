contract Counter {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface Icounter() {
    function count() external view returns(uint);
    function increment() external;
}

contract MyContract{
    function incrementCounter(address _counter) external {
        Icounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint){
        return Icounter(+counter).count;
    }
}


// Exert
interface UniswapV2Factory(){
    function getPair(address tokenA, address tokenB) external view returns(address pair);
}

interface UniswapV2Pair() {
    function getReserves() external view returns(uint reserveA, uint reserveB);
}

contract uniswap{
      // get the contract addresses with etherscan 
   address private constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;    
   address private constant WETH9 = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;   
   address private constant factory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;

   function getReserveTokens() external view returns(uint, uint) {
       address pair = UniswapV2Factory(factory).getPair(DAI, WETH9);
       (uint reserve0, uint reserve1) = UniswapV2Pair(pair).getReserves();

       return(reserve0, reserve1);
   }
}