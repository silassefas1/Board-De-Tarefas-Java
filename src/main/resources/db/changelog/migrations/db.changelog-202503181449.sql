--liquibase formatted sql
--changeset silas:202503181358
--comment: boards table create

CREATE TABLE BLOCKS(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    blocked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    blocked_reason VARCHAR(255) NOT NULL,
    unblocked_at TIMESTAMP NULL,
    unblocked_reason VARCHAR(255) NOT NULL,
    card_id BIGINT NOT NULL,
    CONSTRAINT cards__blocks_fk FOREIGN KEY (card_id) REFERENCES CARDS(id) ON DELETE CASCADE

) ENGINE=InnoDB;
--rollback DROP TABLE BLOCK
