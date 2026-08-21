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

=================================================


Redis কীভাবে কাজ করে?
Request ---->(Data Process  ---> Redis) ----> Response
Request ---> Backend Clint(Python) ---> (Data Process) Redis Server ----> Backend Clint(Python) ----> Response


Set city:'dhaka'  ----> write ram
get city ===> 'dhaka' ---> read ram


Redis Sadaronto single-threaded vabeay command process koreay
aksateay oneak joteal kj na koreay
choto -choto dorto command chaleay
ayteay ayte fast thkeay





=====================================================



In-Memory Data Store কী?
- RAM ---> YES
- Disk ---> NO
- RAM (In-memory) Server Bondo holeay hareay jeteay pareay ----> khop dorto
- Disk (hdd/ssd) sadaronto sateay sql ---> dear


- Example
    - almareay (sql)
    - table (in-memory data store)
    - note/book



- OTP Code
    SET temp:otp '52145'
    Expire temp:otp 30s


=====================================================


 Redis vs SQL Database 

- Storage ---> sql(disk) ---> redis(RAM)
- Model ----> sql(table, row, col) ---> redis(key-value)
- Query ---> sql(query) ---> redis(set, get)
- Speed ----> sql(query, 1s)-----> redis(set, get,~0sec)
- Relationship--->sql(left/right/inner)---->redis(dictionary)
- Best for ---> sql(permanent business data) ---> redis(cache, session, realtime)


*/


