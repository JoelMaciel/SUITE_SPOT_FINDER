CREATE TABLE hotel (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    location VARCHAR(150) NOT NULL,
    rating INT,
    amenities VARCHAR(255),
    description VARCHAR(200),
    contact_info VARCHAR(30)
);

CREATE TABLE room (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    number VARCHAR(50) NOT NULL,
    type VARCHAR(100) NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    capacity INT NOT NULL,
    room_amenities VARCHAR(255),
    size DOUBLE,
    floor INT,
    hotel_id BIGINT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE guest (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    nationality VARCHAR(100),
    date_of_birth DATE,
    document_number VARCHAR(100)
);

CREATE TABLE booking (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    payment_status ENUM('PENDING', 'PAID', 'FAILED', 'REFUNDED', 'CANCELLED', 'PARTIAL') NOT NULL,
    guest_id BIGINT,
    room_id BIGINT,
    FOREIGN KEY (guest_id) REFERENCES guest(id),
    FOREIGN KEY (room_id) REFERENCES room(id)
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE employee (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    hotel_id BIGINT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE employee_role (
    employee_id BIGINT,
    role_id INT,
    PRIMARY KEY (employee_id, role_id),
    FOREIGN KEY (employee_id) REFERENCES employee(id),
    FOREIGN KEY (role_id) REFERENCES role(id)
);


