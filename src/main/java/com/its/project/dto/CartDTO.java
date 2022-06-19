package com.its.project.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

    @Data
    public class CartDTO {
        private Long id;
        private String cName;
        private int cPrice;
        private int cQuantity;
        private int cAll;
        private MultipartFile cFile;
        private String cFileName;
    }

