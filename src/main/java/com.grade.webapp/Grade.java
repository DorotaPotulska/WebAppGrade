package com.grade.webapp;

import lombok.*;
import java.time.LocalDateTime;

@Getter
@Setter
@ToString
@Builder
//@EqualsAndHashCode(of = {"id"})
@AllArgsConstructor
@NoArgsConstructor
public class Grade {
    private Long id;
    private LocalDateTime dateAdded;
    private GradeSubject subject;
    private Double value;
    private boolean corrected;
}
