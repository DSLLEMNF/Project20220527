package com.its.project.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class MemberDTO {
    private Long id;
    private String memberId;
    private String memberPassword;
    private String memberName;
    private int memberAge;
    private String memberEmail;
    private String memberPhone;
    private MultipartFile memberProFile;
    private String memberProFileName;
}
