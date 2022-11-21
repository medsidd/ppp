// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StudentInfo {
    
    struct Student {
        string id;
        string name;
        string phone;
    }

    Student[20] InfoArr;
    uint i=0;

    // Register Student
    function register(string memory _stud_id, string memory _name, string memory _phone) public returns(string memory) {
        Student memory student = Student(_stud_id, _name, _phone);

        if(i > 20) { // Array limit
            return "Memory limit exhausted";
        }
        else {
            InfoArr[i] = student;
            i += 1;
            return "Student registered!";
        }
    }

    // Display student information
    function display(uint idx) public view returns(string memory) {
        Student memory student = InfoArr[idx];
        return string(bytes.concat("ID: ", bytes(student.id), ", Name: ", bytes(student.name), ", Phone: ", bytes(student.phone)));
    }

    // When no other function matches
    fallback(bytes calldata) external payable returns (bytes memory) {
        return "Fallback";
    }

    // For empty data 
    receive() external payable {

    }
}