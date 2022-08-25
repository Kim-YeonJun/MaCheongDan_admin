package com.mapojob.admin.service;

import com.mapojob.admin.domain.UserDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserServiceImplTest {

    @Autowired
    UserService userService;

    @Test
    public void loginTest() throws Exception {
        UserDto userDto =  userService.login("asdf");
        System.out.println("userDto = " + userDto);
        assertTrue(userDto != null);
    }

    @Test
    public void selectAllTest() throws Exception {
        List<UserDto> list =  userService.userListAll();
        for(UserDto userDto : list)
        {
            System.out.println("userDto = " + userDto);
        }
        assertTrue(list != null);
    }

    @Test
    public void insertTest() throws Exception {
        UserDto userDto = new UserDto();
        int rowCnt = 0;
        for(int i = 0; i < 150; i++) {
            userDto.setUserId("TestId" + i);
            userDto.setUserPwd("TestPwd" + i);
            userDto.setUserName("TestName" + i);
            rowCnt += userService.addUser(userDto);
        }
        assertTrue(rowCnt == 150);
    }
}