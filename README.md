# Decentralized Insurance Protocol

## Description
The Decentralized Insurance Protocol is a smart contract built on the Aptos blockchain using Move. It allows users to create insurance policies with predefined premiums and coverage amounts. Policyholders can claim insurance up to the coverage limit, ensuring a secure and decentralized way to handle insurance payouts.

## Vision
Our vision is to revolutionize the insurance industry by leveraging blockchain technology to provide trustless, transparent, and automated insurance services. By removing intermediaries and ensuring fair claims processing, we aim to make insurance more accessible and efficient.

## Future Scope
- **Premium Payments Integration:** Automate premium payments using scheduled transactions.
- **Multiple Insurance Policies:** Allow users to hold multiple policies under a single account.
- **Claim Verification:** Implement smart oracles to verify claim legitimacy before payout.
- **Policy Transferability:** Enable policyholders to transfer policies to other users securely.
- **Multi-Currency Support:** Extend support to different tokens beyond AptosCoin.

## Contract Details
### **Module: MyModule::DecentralizedInsurance**

#### **1. InsurancePolicy Struct**
```move
struct InsurancePolicy has store, key {
    premium: u64,  // Amount paid for insurance coverage
    coverage: u64, // Maximum claim amount
}
```
- **premium:** The amount the user pays for the insurance.
- **coverage:** The maximum amount that can be claimed.

#### **2. Functions**

##### **Create Insurance Policy**
```move
public fun create_policy(owner: &signer, premium: u64, coverage: u64)
```
- Allows a user to create an insurance policy with a specified premium and coverage amount.

##### **Claim Insurance**
```move
public fun claim_insurance(insurer: &signer, claimant: address, amount: u64) acquires InsurancePolicy
```
- Enables policyholders to claim their insured amount from the insurer, ensuring that the claim does not exceed the coverage limit.

## contract address: 0x431e359dd60d546b1d17d3f017649ddc31c74bd47555f8df3f900e41f808ae89

This contract ensures secure, automated, and decentralized insurance claims while maintaining transparency and fairness in the process.

