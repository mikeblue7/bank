pragma solidity >0.4.22 <0.6.0;                  //version of solidity

contract Bank{                                   //create contract with name Bank
 
    mapping (address => uint) private balances;
    mapping (address => uint) private takenLoans;
   
   
   //global variables list
   
uint temp1;          //temp1 =to store loanamount
uint temp;          //temp = to store payLoanAmount
uint  public loancount;
uint public taknln;


function loan(uint loanamount)public{           //apply for loan
if(takenLoans[msg.sender]!=1){

temp1= loanamount;
uint forLoanCount;
forLoanCount=loancount;

if(loanamount<100001){                          //check loanamount is less than 100001
balances[msg.sender] +=loanamount;               //adds loan amount to account balance
forLoanCount++;
loancount=forLoanCount;
takenLoans[msg.sender]=1;
}
}}
 
 
 
 
function interest() public {                    //calculates the interest
   if (takenLoans[msg.sender]==1){                           //checks loan is given to customer
    if(temp1 != temp){                          //check loan amount is paid
    if (temp1>99 && temp1<101){
      balances[msg.sender]-=2;  
    }
    else  if (temp1>999 && temp1<1001){
      balances[msg.sender]-=20;  
    }
     else  if (temp1>9999 && temp1<10001){
      balances[msg.sender]-=200;  
    }
    else  if (temp1>99999 && temp1<100001){
      balances[msg.sender]-=2000;  
    }
}
}
}

function payLoanAmount(uint _payloanamount) public{       //pay loan amount
    if (balances[msg.sender]>_payloanamount){             //check payloanamount is less is than account balance
    if(temp1 == _payloanamount){                          //checks payloanamount is equal to given loanamount
        temp=_payloanamount;
         balances[msg.sender]-=_payloanamount;            //deduct payloan amount from account balance
         loancount--;                                     //loancount decreases if payloanamount is paid
         _payloanamount=0;
         temp=_payloanamount;                             //assign payloanamount to zero if paid
    takenLoans[msg.sender]=0;

       
    }
}
    }



 function deposit(uint _amount) public returns (uint) {       //deposit amount
        balances[msg.sender] += _amount;
        return balances[msg.sender];
    }
   
   
   
   
     function balance() public view returns (uint) {                //check balance
        return balances[msg.sender];
     }
     
     function takenLoan() public view returns (uint) {                //check balance
        return takenLoans[msg.sender];
     }

   
   
function withdraw(uint _requestAmount) public returns(string memory) { //withdraw amount
   if(_requestAmount < balances[msg.sender])                         //checks requested money is less than account balance
        {
            balances[msg.sender] -= _requestAmount;                     //deduct requested amount from account balance
        }
        return "withdraw amount is greater than balance";
   
}
}
