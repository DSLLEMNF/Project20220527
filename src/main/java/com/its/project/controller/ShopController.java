package com.its.project.controller;


import com.its.project.dto.CartDTO;
import com.its.project.dto.MemberDTO;
import com.its.project.dto.ShopDTO;
import com.its.project.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@Controller
public class ShopController {
    @Autowired
    private ShopService shopService;

    @PostMapping("/shopPage/product")
    public String product(@ModelAttribute ShopDTO shopDTO) throws IOException {
        shopService.product(shopDTO);
        return "memberPage/main";
    }

    @GetMapping("/shopPage/shop")
    public String findAll(Model model) {
        List<ShopDTO> shopDTOList = shopService.findAll();
        model.addAttribute("ShopList", shopDTOList);
        return "shopPage/shop";
    }
    @GetMapping("/shopPage/option")
    public String findById(@RequestParam("id")Long id, Model model){
        ShopDTO shopDTO = shopService.findById(id);
        model.addAttribute("shop",shopDTO);
        return "shopPage/option";
    }
    @PostMapping("shopPage/count")
    public String count(@ModelAttribute CartDTO cartDTO) {
        shopService.count(cartDTO);
        return "memberPage/main";
    }
    @GetMapping("/shopPage/cart")
    public String cart(Model model){
        List<CartDTO> cartDTOList = shopService.cart();
        model.addAttribute("CartList",cartDTOList);
        return "shopPage/cart";
    }
    @GetMapping("/shopPage/cartC")
        public String cartC(@ModelAttribute CartDTO cartDTO){
        shopService.cartC(cartDTO);
        return "shopPage/shop";
    }
  }