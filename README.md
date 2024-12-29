# Missing 'await' in asynchronous function call in Solidity

This example demonstrates a common error in asynchronous JavaScript/Solidity code where the `await` keyword is omitted when calling an asynchronous function that returns a Promise.  This results in the function returning a Promise rather than the resolved value.

**Bug:** In the `getBalance` function, it is assumed that `web3.eth.getBalance` returns a Promise which needs to be awaited for the actual balance value.  However, this is not happening leading to unexpected results.

**Solution:** To fix the problem, simply add the `await` keyword before the function call. This will wait for the Promise to resolve before proceeding.
