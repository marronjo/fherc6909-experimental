// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/**
 * Interface for FHE-encrypted ERC6909 standard
 * Intended use : encrypted Trade / LP Receipts
 */
interface IFHERC6909 {
    /**
     * @dev Returns the encrypted amount of tokens of type `id` owned by `owner`.
     */
    function balanceOfEncrypted(address owner, uint256 id) external view returns (uint256);

    /**
     * @dev Returns the encrypted amount of tokens of type `id` that `spender` is allowed to spend on behalf of `owner`.
     */
    function allowanceEncrypted(address owner, address spender, uint256 id) external view returns (uint256);

    /**
     * @dev mint encrypted amount of tokens of type `id` to address `to`.
     */
    function mintEncrypted(address to, uint256 id, uint256 amount) external;

    /**
     * @dev burn encrypted amount of tokens of type `id` from address `from`.
     */
    function burnEncrypted(address from, uint256 id, uint256 amount) external;

    /**
     * @dev Sets an encrypted approval to `spender` for `amount` of tokens of type `id` from the caller's tokens.
     * Must return true.
     */
    function approveEncrypted(address spender, uint256 id, uint256 amount) external returns (bool);

    /**
     * @dev Transfers encrypted `amount` of token type `id` from the caller's account to `receiver`.
     * Must return true.
     */
    function transferEncrypted(address receiver, uint256 id, uint256 amount) external returns (bool);

    /**
     * @dev Transfers `amount` of token type `id` from `sender` to `receiver`.
     * Must return true.
     */
    function transferFromEncrypted(address sender, address receiver, uint256 id, uint256 amount) external returns (bool);
}
