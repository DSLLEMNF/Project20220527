package com.its.project.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class ShopDTO {
    private Long id;
    private String pName;
    private int pPrice;
    private int pQuantity;
    private int pAll;
    private MultipartFile pFile;
    private String pFileName;
}
