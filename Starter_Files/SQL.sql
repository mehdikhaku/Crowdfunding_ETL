-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/O7YsBE
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Table: category

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [category] (
    -- Example: 'cat1'
    [category_id] VARCHAR(10)  NOT NULL ,
    -- Example: 'food'
    [category] VARCHAR(100)  NOT NULL 
)

-- Table: subcategory
CREATE TABLE [subcategory] (
    -- Example: 'subcat1'
    [subcategory_id] VARCHAR(10)  NOT NULL ,
    -- Example: 'food trucks'
    [subcategory] VARCHAR(100)  NOT NULL 
)

-- Table: contacts
CREATE TABLE [contacts] (
    -- Example: 4661
    [contact_id] INT  NOT NULL ,
    -- Example: 'Cecilia'
    [first_name] VARCHAR(100)  NOT NULL ,
    -- Example: 'Velasco'
    [last_name] VARCHAR(100)  NOT NULL ,
    -- Example: 'cecilia.velasco@rodrigues.fr'
    [email] VARCHAR(150)  NOT NULL 
)

-- Table: campaign
CREATE TABLE [campaign] (
    -- Example: 147
    [cf_id] INT  NOT NULL ,
    -- FK to contacts.contact_id
    [contact_id] INT  NOT NULL ,
    -- Example: 'Baldwin, Riley and Jackson'
    [company_name] VARCHAR(255)  NOT NULL ,
    -- Example: 'Pre-emptive tertiary standardization'
    [description] TEXT  NOT NULL ,
    -- Example: 100
    [goal] NUMERIC(10,2)  NOT NULL ,
    -- Example: 0
    [pledged] NUMERIC(10,2)  NOT NULL ,
    -- Example: 'failed'
    [outcome] VARCHAR(50)  NOT NULL ,
    -- Example: 0
    [backers_count] INT  NOT NULL ,
    -- Example: 'CA'
    [country] CHAR(2)  NOT NULL ,
    -- Example: 'CAD'
    [currency] CHAR(3)  NOT NULL ,
    -- Example: '2020-02-13 06:00:00'
    [launch_date] TIMESTAMP  NOT NULL ,
    -- Example: '2021-03-01 06:00:00'
    [end_date] TIMESTAMP  NOT NULL ,
    -- FK to category.category_id
    [category_ids] VARCHAR(10)  NOT NULL ,
    -- FK to subcategory.subcategory_id
    [subcategory_ids] VARCHAR(10)  NOT NULL 
)

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contacts] ([contact_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_contact_id]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_category_ids] FOREIGN KEY([category_ids])
REFERENCES [category] ([category_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_category_ids]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_subcategory_ids] FOREIGN KEY([subcategory_ids])
REFERENCES [subcategory] ([subcategory_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_subcategory_ids]

COMMIT TRANSACTION QUICKDBD