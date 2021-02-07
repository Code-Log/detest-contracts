var contract = artifacts.require("ValidatorRegistry")
module.exports = function(deployer) {
    deployer.deploy(contract, 1);
};