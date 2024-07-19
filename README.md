### ErrorHandling Project

---

#### **Project Title**
ErrorHandling Solidity Smart Contract

#### **Description**
`ErrorHandling` is a Solidity smart contract designed to demonstrate various error handling mechanisms available in Solidity. This contract uses `require`, `revert`, and `assert` to manage and validate input values, showcasing how each mechanism works in practice. This contract serves as an educational tool to understand the nuances and appropriate use cases for these error handling statements.

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
   - You can interact with the `trial` function and observe how different input values trigger `require`, `revert`, or `assert`.

   Example interactions:
   ```javascript
   // Call the trial function with various values
   await instance.trial(10); // This will fail with require error
   await instance.trial(35); // This will fail with revert error
   await instance.trial(20); // This will pass, but assert will check if the value is exactly 20
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
