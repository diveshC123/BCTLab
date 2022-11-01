// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 <0.9.0;

contract CreditChecker {
    //2019130011 - Divesh Choudhary
    uint credit = 10000;

    function getLimit() public view returns(uint){
        return credit;
    }

    function reduce(uint food, uint travel, uint stay) public {
        require( credit - (travel + food + stay) >= 0, "No Credit Available");
        credit = credit - (travel + food + stay);
    }

    function resetCredit() public {
        credit = 10000;
    }
}