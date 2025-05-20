// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {InEuint128, euint128} from "@fhenixprotocol/cofhe-contracts/FHE.sol";

/**
 * Interface for FHE-encrypted ERC6909 standard
 * Intended use : encrypted Trade / LP Receipts
 */
interface IFHERC6909 {
    /**
     * @dev Returns the encrypted amount of tokens of type `id` owned by `owner`.
     */
    function balanceOfEncrypted(address owner, uint256 id) external view returns (euint128);

    /**
     * @dev Returns the encrypted amount of tokens of type `id` that `spender` is allowed to spend on behalf of `owner`.
     */
    function allowanceEncrypted(address owner, address spender, uint256 id) external view returns (euint128);

    /**
     * @dev mint encrypted amount of tokens of type `id` to address `to`.
     */
    function mintEncrypted(address to, uint256 id, euint128 amount) external;

    /**
     * @dev burn encrypted amount of tokens of type `id` from address `from`.
     */
    function burnEncrypted(address from, uint256 id, euint128 amount) external;

    /**
     * @dev Sets an encrypted approval to `spender` for `amount` of tokens of type `id` from the caller's tokens.
     * Must return true.
     */
    function approveEncrypted(address spender, uint256 id, euint128 amount) external returns (bool);

    /**
     * @dev Transfers encrypted input `amount` of token type `id` from the caller's account to `receiver`.
     * Must return true.
     *
     * NOTE: this function is meant to be called from an EOA / frontend. To allow for user signed InEuint input
     */
    function transferEncrypted(address receiver, uint256 id, InEuint128 calldata amount) external returns (bool);
    
    /**
     * @dev Transfers encrypted `amount` of token type `id` from the caller's account to `receiver`.
     * Must return true.
     *
     * NOTE: this function is meant to be called from another smart contract.
     */
    function transferEncrypted(address receiver, uint256 id, euint128 amount) external returns (bool);

    /**
     * @dev Transfers `amount` of token type `id` from `sender` to `receiver`.
     * Must return true.
     *
     * NOTE: this function is meant to be called from an EOA / frontend. To allow for user signed InEuint input
     */
    function transferFromEncrypted(address sender, address receiver, uint256 id, InEuint128 calldata amount) external returns (bool);

    /**
     * @dev Transfers `amount` of token type `id` from `sender` to `receiver`.
     * Must return true.
     *
     * NOTE: this function is meant to be called from another smart contract.
     */
    function transferFromEncrypted(address sender, address receiver, uint256 id, euint128 amount) external returns (bool);
}
