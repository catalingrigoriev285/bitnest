const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("BitNestModule", (m) => {
  const initalSupply = m.getParameter("initalSupply", 1000000);
  const myToken = m.contract("BitNestContract", [initalSupply]);

  function lock() {
    // implementation of lock function
  }

  return { lock };
});
