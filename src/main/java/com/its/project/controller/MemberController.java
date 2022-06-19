package com.its.project.controller;

import com.its.project.dto.MemberDTO;
import com.its.project.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/memberPage/save-form")
    public String saveForm() {
        return "memberPage/save";
    }
    @GetMapping("/memberPage/main-form")
    public String mainForm(){
        return "memberPage/main";
    }
    @PostMapping("/memberPage/save")
    public String save(@ModelAttribute MemberDTO memberDTO) throws IOException {
        memberService.save(memberDTO);
        return "index";
    }

    @GetMapping("/memberPage/findAll")
    public String findAll(Model model) {
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("MemberList", memberDTOList);
        return "memberPage/list";
    }
    @GetMapping("/memberPage/detail")
    public String findById(@RequestParam("id") Long id, Model model) {
        System.out.println("id = " + id);
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "/memberPage/detail";
    }

    @GetMapping("/memberPage/delete")
    public String delete(@RequestParam("id") Long id) {
        System.out.println("id = " + id);
        boolean deleteResult = memberService.delete(id);
        if (deleteResult) {
            return "redirect:/memberPage/findAll";
        } else {
            return "delete-fail";
        }
    }
    @GetMapping("/memberPage/deleteA")
    public String deleteA(@RequestParam("id") Long id){
        boolean deleteResult = memberService.deleteA(id);
        if(deleteResult){
            return "index";
        }else{
            return "delete-fail";
        }
    }
    @GetMapping("/memberPage/update-form")
    public String updateForm(HttpSession session, Model model){
        Long updateId = (Long) session.getAttribute("loginId");
        System.out.println("updateId = " + updateId);
        MemberDTO memberDTO = memberService.findById(updateId);
        model.addAttribute("updateMember",memberDTO);
        return "/memberPage/update";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        boolean updateResult = memberService.update(memberDTO);
        if(updateResult) {
            return "redirect:/memberPage/detail?id=" + memberDTO.getId();
        }else{
            return "update-fail";
        }
    }
    @GetMapping("/memberPage/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }
    @PostMapping("/memberPage/duplicate-check")
    public @ResponseBody String duplicateCheck(@RequestParam("memberId") String memberId){
        System.out.println("memberId = " + memberId);
        String checkResult = memberService.duplicateCheck(memberId);
        return checkResult;
    }

}

