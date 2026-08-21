/*

Redis কী?


- re = remote
- di = dictionary  ---> key:value (pair)
- s = server  ----> Service / Data Storage / Provider
- open source in-memory data store ---> RAM ---> 8GB RAM, 100GB SSD
- khobe droto kj koreay, ~0s, milliseconde --> radis --> set/get ~0sec
- Example
    (user:name):("Anik") ---> set ---> Write
    (user:name)---> get ---> ANik ---> Read



Redis কেন ব্যবহার করা হয়?
- MySql/PostgreSQL thkeay data porte bar user, porte Request
    - Rom/Storage disk I/O lageay
    - quer somey bashe lageay
    - oneak user holeay server chap bareay

- Postgresql(1sec) ---> Redis(~0sec) ---> user
- Speed: Varey First Read/Write
- Latency: Sadaronto Microsecond thkeay milesecond
- Use Case: Cache, Session,queue,realtime
- Data structures: String, List, Set, Hash, Sorted Set
- Example
    set product101_name: "Laptop"
    set product101_price: 75000

    - Fetch 1st ---> redis ---> Get product101_name ---> Laptop
    - page load first hoi

- File Cache 5-100%, Memcache 50-60%, Redis 80-90%


*/


