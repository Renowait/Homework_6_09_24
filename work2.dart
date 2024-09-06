class BankAccount {
  double? _balance;
  String? _name;

  BankAccount(this._balance,this._name);

  double get balance => _balance!;
  set balance(double balance) => this._balance = balance;

  String get name => _name!;
  set name(String name) => this._name = name;
  
  void deposit(double amount){
    balance += amount;
    print('ฝากเงิน : $amount ยอดคงเหลือ : $balance');
  }

  void withdraw(double amount){
    balance -= amount;
    print('ถอน : $amount ยอดคงเหลือ : $balance');
  }

  void showBalance(){
    print('ยอดเงินทั้งหมด : $balance');

  }

  
}

class SavingAccount extends BankAccount{
  double? _interestRate;

  SavingAccount(double _balance,String _name, this._interestRate):super(_balance,_name);
   double get interestRate => _interestRate!;
  set interestRate(double interestRate) => this._interestRate = interestRate;

  void addinterest(double interestRate){
    balance = (balance *interestRate / 100) + balance;
    print('ดอกเบี้ย : $interestRate ยอดคงเหลือ : $balance');
  }
}

void main(List<String> args) {
  var  n = SavingAccount(2000, 'สมยอม', 0);
  n.deposit(400);
  n.withdraw(100);
  n.showBalance();
  n.addinterest(0.25);

  
}