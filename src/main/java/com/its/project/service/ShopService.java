package com.its.project.service;

import com.its.project.dto.CartDTO;
import com.its.project.dto.ShopDTO;
import com.its.project.repository.ShopRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;


@Service
public class ShopService {
    @Autowired
    private ShopRepository shopRepository;

    public void product(ShopDTO shopDTO) throws IOException {
        MultipartFile pFile = shopDTO.getPFile();
        String pFileName = pFile.getOriginalFilename();
        pFileName = System.currentTimeMillis() + "-" + pFileName;
        shopDTO.setPFileName(pFileName);
        String savePath = "D:\\spring_img\\" + pFileName;
        if (!pFile.isEmpty()) {
            pFile.transferTo(new File(savePath));
        }
        shopRepository.product(shopDTO);
    }

    public List<ShopDTO> findAll() {
        return shopRepository.findAll();
    }

    public ShopDTO findById(Long id) {
        return shopRepository.findById(id);
    }

    public void count(CartDTO cartDTO) {
        shopRepository.count(cartDTO);
    }

    public List<CartDTO> cart() {return shopRepository.cart();
    }

    public void cartC(CartDTO cartDTO) {
        shopRepository.cartC(cartDTO);
    }
}


