### README for ErrorHandling Project

---

#### **Project Title**
ErrorHandling Solidity Smart Contract

#### **Description**
`ErrorHandling` is a Solidity smart contract designed to demonstrate various error handling mechanisms available in Solidity, including `require`, `revert`, and `assert`. This contract includes functions to validate numeric values, string lengths, and sums of numbers, providing practical examples of how to use these error handling statements effectively.

---

#### **Getting Started**

##### **Installing**

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/yourusername/ErrorHandling.git
   cd ErrorHandling
   ```

2. **Install Dependencies:**
   Ensure you have [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed. Then install Truffle if you plan to use it for development:
   ```sh
   npm install -g truffle
   ```

##### **Executing Program**

1. **Open Remix IDE:**
   - Go to [Remix Ethereum IDE](https://remix.ethereum.org/).
   - Create a new file named `ErrorHandling.sol` and paste the contract code from the repository.

2. **Compile the Contract:**
   - In the Remix IDE, select the `ErrorHandling.sol` file.
   - Go to the "Solidity Compiler" tab and click "Compile ErrorHandling.sol".

3. **Deploy the Contract:**
   - Go to the "Deploy & Run Transactions" tab.
   - Ensure the environment is set to "JavaScript VM (London)".
   - Click "Deploy".

4. **Interact with the Contract:**
   - After deployment, the contract functions will appear in the "Deployed Contracts" section.
   - You can interact with functions like `checkValue`, `checkStringLength`, and `verifySum` directly from the Remix interface.

   Example interactions:
   ```javascript
   // Check if a value is within a specific range
   await instance.checkValue(16); // This will pass
   await instance.checkValue(31); // This will fail with revert error
   await instance.checkValue(20); // This will fail with assert error

   // Check if a string length is within limits
   await instance.checkStringLength("Hello!"); // This will pass
   await instance.checkStringLength("Short"); // This will fail with require error
   await instance.checkStringLength("This string is too long to pass"); // This will fail with revert error

   // Verify the sum of two numbers within a range
   await instance.verifySum(5, 6); // This will pass
   await instance.verifySum(25, 26); // This will fail with revert error
   await instance.verifySum(15, 15); // This will fail with assert error
   ```

##### **Help**
For common issues, ensure you have the correct versions of dependencies and the correct settings in the Remix IDE.

If you encounter issues:
- Check the Remix IDE documentation for setup and usage.
- Consult the [Solidity documentation](https://docs.soliditylang.org/) for details on `require`, `revert`, and `assert`.

For additional support, you can raise an issue on the project repository or seek help in Solidity or Ethereum development forums.

---

#### **Authors**

- **Zuphia Rosal**
  - Email: 202111617@fit.edu.ph

---

#### **License**
This project is licensed under the MIT License - see the LICENSE.md file for details.
