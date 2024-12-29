function getBalance() {
  const balance = await web3.eth.getBalance(address);
  return balance;
}

// ... later in the code ...

const balance = getBalance(); // Missing await keyword
console.log(balance);