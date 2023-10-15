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
