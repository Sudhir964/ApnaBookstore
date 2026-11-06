-- Schema and seed data for Supabase PostgreSQL (ApnaBookstore)

CREATE TABLE IF NOT EXISTS books (
    barcode VARCHAR(100) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price INT,
    quantity INT
);

CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(100) PRIMARY KEY,
    password VARCHAR(100) NOT NULL,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    address TEXT NOT NULL,
    phone VARCHAR(100) NOT NULL,
    mailid VARCHAR(100) NOT NULL,
    usertype INT NOT NULL
);

-- Seed Programming & Tech Books
INSERT INTO books VALUES('9780134190563','The Go Programming Language','Alan A. A. Donovan and Brian W. Kernighan',400,8) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780133053036','C++ Primer','Stanley Lippman and Josée Lajoie and Barbara Moo',976,13) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781718500457','The Rust Programming Language','Steve Klabnik and Carol Nichols',560,12) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781491910740','Head First Java','Kathy Sierra and Bert Bates and Trisha Gee',754,23) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781492056300','Fluent Python','Luciano Ramalho',1014,5) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781720043997','The Road to Learn React','Robin Wieruch',239,18) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780132350884','Clean Code: A Handbook of Agile Software Craftsmanship','Robert C Martin',288,3) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780132181273','Domain-Driven Design','Eric Evans',560,28) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781951204006','A Programmers Guide to Computer Science','William Springer',188,4) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780316204552','The Soul of a New Machine','Tracy Kidder',293,30) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780132778046','Effective Java','Joshua Bloch',368,21) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781484255995','Practical Rust Projects','Shing Lyu',257,15) ON CONFLICT (barcode) DO NOTHING;

-- Seed Autobiographies & Biographies
INSERT INTO books VALUES('9788173711466','Wings of Fire: An Autobiography','A.P.J. Abdul Kalam & Arun Tiwari',350,25) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788172290085','The Story of My Experiments with Truth','Mahatma Gandhi',220,30) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781473605206','Playing It My Way','Sachin Tendulkar',499,18) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780143031048','An Autobiography: Toward Freedom','Jawaharlal Nehru',395,12) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781451648539','Steve Jobs: The Exclusive Biography','Walter Isaacson',550,15) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780316548182','Long Walk to Freedom','Nelson Mandela',450,14) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788172345198','The Diary of a Young Girl','Anne Frank',199,22) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788189535513','Autobiography of a Yogi','Paramahansa Yogananda',299,20) ON CONFLICT (barcode) DO NOTHING;

-- Seed Classic & Indian Novels
INSERT INTO books VALUES('9788177212006','Godan (गोदान)','Munshi Premchand',250,35) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788126715428','Gunahon Ka Devta (गुनाहों का देवता)','Dharamvir Bharati',290,28) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788185986005','The Guide','R. K. Narayan',210,20) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780099578512','Midnight''s Children','Salman Rushdie',499,15) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780143030966','The God of Small Things','Arundhati Roy',399,18) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780143065883','Train to Pakistan','Khushwant Singh',240,24) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9781416562603','The White Tiger','Aravind Adiga',320,16) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9788172234980','The Alchemist','Paulo Coelho',280,40) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780061120084','To Kill a Mockingbird','Harper Lee',375,19) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780451524935','1984','George Orwell',230,25) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780743273565','The Great Gatsby','F. Scott Fitzgerald',220,20) ON CONFLICT (barcode) DO NOTHING;
INSERT INTO books VALUES('9780141439518','Pride and Prejudice','Jane Austen',210,22) ON CONFLICT (barcode) DO NOTHING;

-- Seed Users
INSERT INTO users VALUES('demo','demo','Demo','User','Demo Home','42502216225','demo@gmail.com',2) ON CONFLICT (username) DO NOTHING;
INSERT INTO users VALUES('Admin','Admin','Mr.','Admin','Admin Office','9584552224521','admin@gmail.com',1) ON CONFLICT (username) DO NOTHING;
INSERT INTO users VALUES('sudhir','sudhir','Sudhir','Bind','Bihar','1236547089','sudhirbind472@gmail.com',2) ON CONFLICT (username) DO NOTHING;
