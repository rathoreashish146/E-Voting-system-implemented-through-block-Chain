
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;


contract Election{
    //Model a candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }

    //Store Candidate
    //Fetch Candidate
    mapping(uint => Candidate) public candidates;
    //Store Candidate Count
    uint public candidateCount;


    constructor() public{
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
    
    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount,_name,0);
    }
}