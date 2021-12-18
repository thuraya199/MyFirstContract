{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "a7787173-5ad7-4b6f-84b6-930cdddf7bd0",
   "metadata": {},
   "outputs": [],
   "source": [
    "pragma solidity ^0.8.0;\n",
    "\n",
    "contract EmptyCotract{\n",
    "}\n",
    "contract Name{\n",
    "    string public message; \n",
    "    constructor (string memory message1){\n",
    "        message1 = message;\n",
    "\n",
    "    }  \n",
    "}\n",
    "contract Bank{\n",
    "    mapping(address=>uint) account_balances;\n",
    "    function transfer(uint amount, address acctToTransfareTo) external{\n",
    "        account_balances[msg.sender] -= amount;\n",
    "        account_balances[acctToTransfareTo] += amount;\n",
    "    }\n",
    "\n",
    "    function BankBalance() external view returns(uint){\n",
    "        return address(this).balance; \n",
    "    }\n",
    "\n",
    "    function withdraw(uint amount) external{\n",
    "        account_balances[msg.sender]-= amount;\n",
    "        payable(msg.sender).transfer(amount);\n",
    "    }\n",
    "\n",
    "    receive() external payable {\n",
    "        account_balances[msg.sender]+= msg.value;\n",
    "    } \n",
    "}"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.8"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
