
# Voting System Smart Contract

This repository contains a Solidity smart contract for a simple voting system. The contract allows an owner to register candidates, and users to vote for their preferred candidate. The contract also provides functionality to tally votes and declare a winner.

## Features

- **Owner Registration**: Only the owner can register new candidates.
- **Voting**: Users can vote for their preferred candidates.
- **Vote Tallying**: The owner can tally votes for any candidate.
- **Declare Winner**: The contract can declare the candidate with the most votes as the winner.

## Usage

1. **Deploy the Contract**: Deploy the `VotingSystem` contract to your preferred Ethereum network.
2. **Register Candidates**: The owner can register additional candidates using the `registerCandidate` function.
3. **Vote**: Users can vote for candidates using the `vote` function.
4. **Tally Votes**: The owner can tally votes for a specific candidate using the `tallyVotes` function.
5. **Declare Winner**: Anyone can call the `declareWinner` function to get the candidate with the highest votes.
