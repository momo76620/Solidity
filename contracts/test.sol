// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract test {

    uint nombre;

    function getNombre() public view returns(uint) {
        return nombre;
    }

    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }
}

contract test2 {

    mapping (address => uint) Balances;

    function getBalance(address _monAdresse) public view returns(uint){
        return Balances[_monAdresse];
    }

    receive() external payable {
        //msg.value
        //msg.sender
        Balances[msg.sender] = msg.value;
    }
}

contract test3 {

    struct balance {
        uint money;
        uint numPayments;
    }

    mapping (address => balance) Balances;

    function getBalance() public view returns(uint){
        return Balances[msg.sender].money;
    }

    function getNumPayments() public view returns(uint){
        return Balances[msg.sender].numPayments;
    }

    receive() external payable {
        Balances[msg.sender].money += msg.value;
        Balances[msg.sender].numPayments += 1;
    }
}

contract Arrays {

    uint[] nombre;

    function addValue(uint _valeur) public {
        nombre.push(_valeur);
    }

    function updateValue(uint _valeur, uint _index) public {
        nombre[_index] = _valeur;
    }

    function deleteValue(uint _index) public {
        delete nombre[_index];
    }

    function getValue(uint _index) public view returns(uint) {
        return nombre[_index];
    }

    function getNombreX2() public view returns(uint[] memory) {
        uint longueur = nombre.length;
        uint[] memory nombreX2 = new uint[](longueur);
        for (uint i = 0; i < longueur; i++) {
            nombreX2[i] = nombre[i] * 2;
        }

        return nombreX2;
    }

    function somme(uint[] memory monTableau) public returns(uint[] memory) {

    }
}