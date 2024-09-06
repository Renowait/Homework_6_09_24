//นธีพัฒน์ เถื่ินกวา ปสสท3 3651051541147

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
    print('ฝากเงิน : $amount บาท   ยอดคงเหลือ : $balance บาท');
  }

  void withdraw(double amount){
    balance -= amount;
    print('ถอน : $amount บาท   ยอดคงเหลือ : $balance บาท');
  }

  void showBalance(){
    print('ยอดเงินทั้งหมด : $balance บาท');

  }

  
}

class SavingAccount extends BankAccount{
  double? _interestRate;

  SavingAccount(double _balance,String _name, this._interestRate):super(_balance,_name);
   double get interestRate => _interestRate!;
  set interestRate(double interestRate) => this._interestRate = interestRate;

  void addinterest(double interestRate){
    balance = (balance *interestRate / 100) + balance;
    print('ได้รับดอกเบี้ย : $interestRate  บาท   ยอดคงเหลือ : $balance บาท');
  }
}

void main(List<String> args) {
  var  n = SavingAccount(2000, 'สมยอม', 0);
  n.deposit(400);
  n.withdraw(100);
  n.showBalance();
  n.addinterest(0.25);

  
}