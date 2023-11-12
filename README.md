# testbank

Для запуска проекта выполнить

`irb -r ./application.rb`

Пример использования класса Account

```
irb(main):001:0> account = Account.new.open('Vasya', 'Petrov')
=> #<Account:0x00000001574280f8 @id="465148", @first_name="Vasya", @last_name="Petrov", @status=:opened, @balance=0>
irb(main):002:0> account.deposit_funds(500)
Ваш счёт пополнен на 500 рублей. Ваш баланс 500 рублей
=> nil
irb(main):003:0> account.withdraw_funds(300)
Вы сняли 300 рублей. Ваш баланс 200 рублей
=> nil
irb(main):004:0> account.info
ID: 465148
Имя владельца: Vasya Petrov
Баланс счёта: 200 рублей
=> nil
irb(main):005:0> account.close
Снимите все средства перед закрытием счёта
=> nil
irb(main):006:0> account.withdraw_funds(250)
Недостаточно средств на счёте
=> nil
irb(main):007:0> account.withdraw_funds(200)
Вы сняли 200 рублей. Ваш баланс 0 рублей
=> nil
irb(main):008:0> account.close
Ваш счёт №465148 закрыт
=> nil
```

Пример использования класса Deposit

```
irb(main):001:0> deposit = Deposit.new.open('Vasya', 'Petrov', 100000, 4, 36)
=> #<Deposit:0x00000001320a0ef0 @id="334818", @first_name="Vasya", @last_name="Petrov", @status=:opened, @balance=100000, @rate=4, @period=36>
irb(main):002:0> deposit.monthly_profit
Ваш ежемесячный доход составляет 333 рублей
=> nil
irb(main):003:0> deposit.all_profit
Ваш доход за весь срок составляет 11988 рублей
=> nil
irb(main):004:0> deposit.info
ID: 334818
Имя владельца: Vasya Petrov
Баланс вклада: 100000 рублей
Процентная ставка вклада: 4%
Срок вклада: 36 месяцев
=> nil
irb(main):005:0> deposit.close
Ваш вклад №334818 закрыт
=> nil
```

Пример использования класса Credit

```
irb(main):001:0> credit = Credit.new.open('Vasya', 'Petrov', 80000, 9, 24)
=> #<Credit:0x000000014fb38710 @id="339329", @first_name="Vasya", @last_name="Petrov", @status=:opened, @debt=80000, @rate=9, @period=24>
irb(main):002:0> credit.monthly_payment
Ваш ежемесячный платёж составляет 3933 рублей
=> nil
irb(main):003:0> credit.pay_to_debt(5000)
Вы внесли 5000 рублей по кредиту №339329. Сумма долга 75000 рублей
Ежемесячный платёж уменьшился и стал 3688 рублей
=> nil
irb(main):004:0> credit.info
ID: 339329
Имя владельца: Vasya Petrov
Сумма долга: 75000 рублей
Процентная ставка: 9%
Срок кредита: 24 месяцев
=> nil
irb(main):005:0> credit.close
Погасите всю сумму долга перед закрытием счёта
=> nil
irb(main):006:0> credit.pay_to_debt(75000)
Вы внесли 75000 рублей по кредиту №339329. Сумма долга 0 рублей
Ежемесячный платёж уменьшился и стал 0 рублей
=> nil
irb(main):007:0> credit.close
Ваш кредит №339329 закрыт
=> nil
```
