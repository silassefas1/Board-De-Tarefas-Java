package com.github.silassefas1.Board_De_Tarefas.persistence.entity;

import com.github.silassefas1.Board_De_Tarefas.persistence.entity.enums.BoardColumnKindEnum;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class BoardColumnEntity {

    private Long id;
    private String name;
    private int order;
    private BoardColumnKindEnum kind;
    private BoardEntity board = new BoardEntity();
    private List<CardEntity> cards = new ArrayList<>();
}
