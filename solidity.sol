// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

    // using struct - it can be using across multiple contracts
    // struct student{
    //     uint studentRollNumber;
    //     string studentName;
        // uint studentID;
        // string studentGrade;
    // }

    // visibility - public, private, internal, external

    // contract A {

        // function f1() public pure returns(uint) {

            // uint accessingFunction1 = f2(); // Yes
            //private function f2 can be acessed within public function, Within - Yes 
            // uint accessingFunction2 = f3(); // Yes
            //internal function f3 can be acessed within public function, Within - Yes 
            // uint accessingFunction3 = f4(); // No
            //external function f4 cannot be acessed within public function, Within - No 
            // return 1;

            //outside  (possible) - accessible to the outside environment (compile and you will see f1)
            // within  (possible)
            // derived (possible)
            // other (possible)
        // }

        // function f2() private pure returns(uint) {
    
            // uint accessingFunction1 = f1(); // Yes
            //public function f1 can be acessed within private function, Within - Yes 
            // uint accessingFunction2 = f3(); // Yes
            //internal function f3 can be acessed within private function, Within - Yes 
            // uint accessingFunction3 = f4(); // No
            //external function f4 cannot be acessed within private function, Within - No 
            // return 2;
            
            //outside  (not possible) - not accessible to the outside environment (compile and you will not see f2)
            // within  (possible)
            // derived (not possible)
            // other (not possible)
        // }

        // function f3() internal pure returns(uint) {
            
            // uint accessingFunction1 = f1(); // Yes
            //public function f1 can be acessed within internal function, Within - Yes 
            // uint accessingFunction2 = f2(); // Yes
            //private function f2 can be acessed within internal function, Within - Yes 
            // uint accessingFunction3 = f4(); // No
            //external function f4 cannot be acessed within internal function, Within - No 
           
            // return 3;

            //outside  (not possible) -  not accessible to the outside environment (compile and you will not see f3)
            // within  (possible)
            // derived (possible)
            // other (not possible)
        // }

        // function f4() external pure returns(uint) {
        
            // uint accessingFunction1 = f1(); // Yes
            //public function f1 can be acessed within internal function, Within - Yes 
            // uint accessingFunction2 = f2(); // Yes
            //private function f2 can be acessed within internal function, Within - Yes 
            // uint accessingFunction3 = f3(); // No
            //internal function f4 can be acessed within external function, Within - Yes 
            
            // return 4;

            // outside (possible) - accessible to the outside environment (compile and you will see f4)
            // within (not possible)
            // derived (possible but also dependent on within)
            // other (possible)
        // }
    // }

    // To demonstrate derived type 
    // contract B is A{
    //     uint public bf1 = f1(); // derived
        // uint public bf2 = f2(); // not derived - not possible as private is not derived 
        // uint public bf3 = f3(); // derived
        // uint public bf4 = f4(); // not possible as exteral is derived but we cannot use it within.
    //  }

    //  contract C{
    //     A obj = new A();
    //     uint public cf1 = obj.f1(); // other (possible)
        // uint public cf2 = obj.f2(); // other (not possible)
        // uint public cf3 = obj.f3(); // other (not possible)
        // uint public cf4 = obj.f4(); // other (possible)
    //  }


contract SimpleStorage {



    // contract update balance 

    // make your contract payable

    // we need to explicitly mention the address  
    // address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    // this function loads the balance
    // function payEther() public payable {

    // }
    // this function checkBalance
    // function checkBalance() public view returns(uint) {
    //     return address(this).balance;
    // }

    // this function transfer ether to the address associated with user variable
    // function transferEther() public {
    //     user.transfer(27 ether);
    // }


    // storage vs memory

    // string [] public keywords = ['web3', 'blockchain', 'highnitin'];

    // function mem() public view{
    //     string [] memory keyBank = keywords;
    //     // keyBank is exact copy of keywords
    //     keyBank[0] = 'web3.0 #web3'; 
    //     // keyBank[0] is referring to the copy of the array keywords not the original array keywords. Hence it is untouched.
    // }

    // function sto() public {
    //     string [] storage keyBank = keywords;
    //     // keyBank is same as array keywords
    //     keyBank[0] = 'web3.0 #web3'; 
    //     // keyBank[0] is referring to the exact array keywords. Hence it is updated.
    // }



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