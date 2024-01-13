// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

    // using struct - it can be using across multiple contracts
    // struct student{
    //     uint studentRollNumber;
    //     string studentName;
        // uint studentID;
        // string studentGrade;
    // }

contract SimpleStorage {

    


    // global variables

    // function getBlockInfo() public view returns (
    //     bytes32 blockHash,
    //     uint chainId,
    //     address payable coinbase,
    //     uint difficulty,
    //     uint gasLimit,
    //     uint blockNumber,
    //     uint timestamp
    // ) {
    //     return (
    //         blockhash(block.number),
    //         block.chainid,
    //         block.coinbase,
    //         block.difficulty,
    //         block.gaslimit,
    //         block.number,
    //         block.timestamp
    // https://www.epochconverter.com/ for time stamp conversion use this
    //     );
    // }

    // function getMsgAndTxInfo() public view returns (
    //     uint gasRemaining,
    //     bytes memory msgData,
    //     address msgSender,
    //     bytes4 msgSig,
    //     uint txGasPrice,
    //     address txOrigin
    // ) {
    //     return (
    //         gasleft(),
    //         msg.data,
    //         msg.sender,
    //         msg.sig,
    //         tx.gasprice,
    //         tx.origin
    //     );
    // }

    // function getter() public view returns (
    //     bytes32 blockHash,
    //     uint chainId,
    //     address payable coinbase,
    //     uint difficulty,
    //     uint gasLimit,
    //     uint blockNumber,
    //     uint timestamp,
    //     uint gasRemaining,
    //     bytes memory msgData,
    //     address msgSender,
    //     bytes4 msgSig,
    //     uint txGasPrice,
    //     address txOrigin
    // ) {
    //     return (
    //         blockhash(block.number),
    //         block.chainid,
    //         block.coinbase,
    //         block.difficulty,
    //         block.gaslimit,
    //         block.number,
    //         block.timestamp,
    //         gasleft(),
    //         msg.data,
    //         msg.sender,
    //         msg.sig,
    //         tx.gasprice,
    //         tx.origin
    //     );
    // }

    // mapping with struct
    
    // example 1

    // struct car {
    //     uint modelNumber;
    //     string modelName;
    //     string modelColor;
    //     uint modelPrice;
    // }

    // mapping (uint=>car) public carDetails;
    // function getCarInfo(uint id, uint _modelNumber, string memory _modelName, string memory _modelColor, uint _modelPrice) public {
    //     carDetails[id] = car(_modelNumber, _modelName, _modelColor, _modelPrice);
    // }


    // example 2

    // struct student{
    //     string name;
    //     uint class;
    // }
    // mapping(uint => student) public studentData; 
    // function setter(uint _rollNo, string memory _name, uint _class) public {
    //     studentData[_rollNo] = student(_name, _class);
    // }


    // mapping



//    mapping(uint => string) public rollNo;
//     function getter(uint key, string memory value) public {
//         rollNo[key] = value;
//     }



    // using enum

    // enum user {allow, notAllow, wait, go, dead}
    // user public u1 = user.allow;
    // uint public lottery = 1000;
    // function owner() public{
    //     if(u1 == user.allow){
    //         lottery = 0;
    //     }
    // }

    // function changeOwner() public {
    //     u1 = user.notAllow;
    // }

    // using struct
    // student public s1;
    
    // constructor(uint _roll, string memory _name){
    //     s1.studentRollNumber = _roll;
    //     s1.studentName = _name;
        // s1.studentID = _id;
        // s1.studentGrade = _grade;
    // }

    // function change(uint _roll, string memory _name) public {
        
    // student memory ns = student({
    //     studentRollNumber:_roll,
    //     studentName: _name
    // });

    // s1 = ns;
        
    // }
    // function updateStudent() public {
    // }

    // uint[5] public array;
    
    // constructor(uint _roll, uint _name, uint _id, uint _grade ){
    //     array[0] = _roll;
    //     array[1] = _name;
    //     array[2] = _id;
    //     array[3] = _grade;
    // }


    // bool public value1;
    // bool public value2 = true;
    // function checkingBooleanValue(int number) public pure returns(bool){

    //     bool value;

    //     if(number > 0){
    //         value = true;
    //     }else{
    //         value = false;
    //     }
    //     return value;
    // }

    // if else statement

    // uint public number;

    // function checker(uint number) public pure returns(string memory){
    // string memory value;
    // if(number < 0){
    //     value = "Number is less than 0.";
    // }else if(number > 0){
    //     value = "Number is greater than 0.";
    // }else{
    //     value = "Number is equal to 0.";
    // }
    // return value;
    // }



    // loops - do loop, for loop, do while loop
    // uint [5] public arr;
    // uint public count;
    // uint public countNeg = 5;
    // function loopInteraction() public {
    
    // While Loop
    
    // while (count < arr.length )
    // {
    //     arr[count] = countNeg;
    //     count++;
    //     countNeg--;
    // }

    // Do While Loop

    // do
    // {
    //     arr[count] = countNeg;
    //     count++;
    //     countNeg--;
    // }
    // while (count < arr.length );
    // arr.length;

    // For Loop

    // for(uint i=0; i<arr.length; i++){
    //     arr[i] = i;
    // }


    // }

    // function displayArray() public view returns(uint){
    //     return arr.length;
    // }


    // byte array (dynamic size array)

    // bytes public b1 = "abc";

    // byte array (fixed size)

    // bytes1 public b1;
    // bytes2 public b2;
    // bytes3 public b3;
    // bytes public arr = "abcd";
    // string public str

    // function getter() public {
    //     arr.push("a");
    // }
    // function editByteElement(uint i) public{
    //     arr[i] = "e";
    // }

    // function getter(uint index) public view returns (bytes1) {
    //     return arr[index];
    // }
    // function setter(uint index, uint number) public{
    //     arr[index] = number;
    // }

    // function getter() public{
    //     b1 = '`';
    //     b2 = "`a";
    //     b3 = "`ab";
    //     b4 = "ab"; // b3 is initialized with bytes3 so value will be x000000000, so ab here will be added as converted hex value for ab, ab == 6162 and rest pf the value will be mapped by 0 at the end. so  the output will be b4 = x061620000;
        // b3[0] = "a"; // bytes array cannot be modified
    // }


    // dynamic array push pop 

    // uint[] public array;
    // function pushElement(uint element) public {
    //     return array.push(element);
    // }

    // function popElement() public {
    //     array.pop();
    // }

    // function arrLength() public view returns(uint){
    //     return array.length;
    // }




    // uint[3] public arr = [1,2,3];

    // function getter() public view returns(uint){
    //     return arr.length;
    // } 
    
    // uint public storedData;
    // function dataAction(uint data) public {
    //     storedData = data;
    // }

    // array

    // uint [5] public arr = [1,2,3,4,5];

    // function length() view public returns(uint) {
    //     return arr.length;
    // }
    // function setter(uint index, uint number) public{
    //     arr[index] = number;
    // }
}