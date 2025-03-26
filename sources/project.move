module MyModule::DecentralizedInsurance {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing an insurance policy.
    struct InsurancePolicy has store, key {
        premium: u64,  // Amount paid for insurance coverage
        coverage: u64, // Maximum claim amount
    }

    /// Function to create a new insurance policy.
    public fun create_policy(owner: &signer, premium: u64, coverage: u64) {
        let policy = InsurancePolicy {
            premium,
            coverage,
        };
        move_to(owner, policy);
    }

    /// Function to claim an insured amount.
    public fun claim_insurance(insurer: &signer, claimant: address, amount: u64) acquires InsurancePolicy {
        let policy = borrow_global_mut<InsurancePolicy>(signer::address_of(insurer));
        assert!(amount <= policy.coverage, 1);
        
        let payout = coin::withdraw<AptosCoin>(insurer, amount);
        coin::deposit<AptosCoin>(claimant, payout);
    }
}
