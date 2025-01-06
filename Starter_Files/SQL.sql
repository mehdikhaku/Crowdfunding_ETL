-- Table: category
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY, -- Example: 'cat1'
    category_name VARCHAR(100) NOT NULL -- Example: 'food'
);

-- Table: subcategory
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY, -- Example: 'subcat1'
    subcategory_name VARCHAR(100) NOT NULL -- Example: 'food trucks'
);

-- Table: contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY, -- Example: 4661
    name VARCHAR(100) NOT NULL, -- Example: 'Cecilia Velasco'
    email VARCHAR(150) NOT NULL UNIQUE -- Example: 'cecilia.velasco@rodrigues.fr'
);

-- Table: campaign
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY, -- Example: 147
    contact_id INT NOT NULL, -- FK to contacts.contact_id
    company_name VARCHAR(255) NOT NULL, -- Example: 'Baldwin, Riley and Jackson'
    description TEXT NOT NULL, -- Example: 'Pre-emptive tertiary standardization'
    goal NUMERIC(10, 2) NOT NULL, -- Example: 100
    pledged NUMERIC(10, 2) NOT NULL, -- Example: 0
    outcome VARCHAR(50) NOT NULL, -- Example: 'failed'
    backers_count INT NOT NULL, -- Example: 0
    country CHAR(2) NOT NULL, -- Example: 'CA'
    currency CHAR(3) NOT NULL, -- Example: 'CAD'
    launch_date TIMESTAMP NOT NULL, -- Example: '2020-02-13 06:00:00'
    end_date TIMESTAMP NOT NULL, -- Example: '2021-03-01 06:00:00'
    staff_pick BOOLEAN NOT NULL, -- Example: FALSE
    spotlight BOOLEAN NOT NULL, -- Example: FALSE
    category_ids VARCHAR(10) NOT NULL, -- FK to category.category_id
    subcategory_ids VARCHAR(10) NOT NULL, -- FK to subcategory.subcategory_id
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_ids) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_ids) REFERENCES subcategory(subcategory_id)
);
