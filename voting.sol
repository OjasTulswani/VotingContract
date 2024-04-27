// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.2 ;

contract VotingSystem{
    address owner;
    string[]  public candidate = ["Ojas", "Nidhi", "Vanshika", "Surya", "Teddy"];
    mapping(string => bool)  isRegistered;
    mapping(string => uint)  votes;
    mapping(address => bool)  hasVote;

    modifier  onlyOwner(){
        require(msg.sender == owner, "Only Owner can register Candidate");
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    function registerCandidate(string memory _candidateName) public onlyOwner{
        // check for candidare is register 
        if(isRegistered[_candidateName]){
            //candidate is already register
            revert("Candidate  already registered.");
        }

        // not registered, so registration procedure
        candidate.push(_candidateName);

        isRegistered[_candidateName]= true;
    }

    function vote(string memory _candidateName) public{
        //check that voter vote or not pehle
        require(!hasVote[msg.sender], "You have already done voting");

        //check if that candidate exists
        require(isRegistered[_candidateName], "No such Candidate");

        votes[_candidateName]++;
        hasVote[msg.sender]= true;
    }

    function getAllCandidate() public view  returns(string[] memory){
        return (candidate);
    }

    function tallyVotes(string memory _candidateName) public view onlyOwner returns(uint256){
        return votes[_candidateName];
    }

    function declareWinner() public view returns(string memory){
        uint256 maxVotes = 0;
        string memory winner;
        for(uint256 i = 0; i < candidate.length; i++){
            if(votes[candidate[i]]>maxVotes){
                maxVotes = votes[candidate[i]];
                winner = candidate[i];
            }
        }
        return winner;
    }


}
