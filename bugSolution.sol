async function getBalance() {
  const balance = await web3.eth.getBalance(address);
  return balance;
}

// ... later in the code ...

const balance = await getBalance(); // Added await keyword
console.log(balance); // Now will log correct balance