package com.its.project.service;

import com.its.project.dto.MemberDTO;
import com.its.project.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;


    public void save(MemberDTO memberDTO) throws IOException {
        MultipartFile memberProFile = memberDTO.getMemberProFile();
        String memberProFileName = memberProFile.getOriginalFilename();
        memberProFileName = System.currentTimeMillis() + "-" + memberProFileName;
        memberDTO.setMemberProFileName(memberProFileName);
        String savePath = "D:\\spring_img\\" + memberProFileName;
        if (!memberProFile.isEmpty()) {
            memberProFile.transferTo(new File(savePath));
        }
        memberRepository.save(memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);
        return loginMember;
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }

    public boolean delete(Long id) {
        int deleteResult = memberRepository.delete(id);
        if (deleteResult > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean update(MemberDTO memberDTO) {
        int updateResult = memberRepository.update(memberDTO);
        if(updateResult > 0 ){
            return true;
        }else{
            return false;
        }
    }

    public String duplicateCheck(String memberId) {
        String checkResult = memberRepository.duplicateCheck(memberId);
        if (checkResult == null) {
            return "ok";
        } else {
            return "no";
        }
    }

    public boolean deleteA(Long id) {
        int deleteAResult = memberRepository.deleteA(id);
        if(deleteAResult > 0){
            return true;
        }else{
            return false;
        }

    }
}
