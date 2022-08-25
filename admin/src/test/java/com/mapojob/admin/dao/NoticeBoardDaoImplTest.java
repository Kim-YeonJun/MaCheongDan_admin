package com.mapojob.admin.dao;

import com.mapojob.admin.domain.NoticeBoardDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class NoticeBoardDaoImplTest {

    @Autowired
    NoticeBoardDao noticeBoardDao;

    @Test
    public void noticeboard() throws Exception{
        noticeBoardDao.deleteAll();
        noticeBoardDao.alterTable_AutoIncre();

        NoticeBoardDto dto = new NoticeBoardDto("testtitle","testcontent","asdf", "admin");
        int result = noticeBoardDao.insert(dto);
        assertTrue(result==1);
        for(int i = 2; i <= 130; i++){
            dto = new NoticeBoardDto("title"+i, "no coment", "asdf", "admin");
            noticeBoardDao.insert(dto);
        }

        dto = noticeBoardDao.select(1);
        System.out.println("dto = " + dto);
        assertTrue(dto!=null);
    }

    @Test
    public void deleteAll() throws Exception{
        noticeBoardDao.deleteAll();
        int result = noticeBoardDao.alterTable_AutoIncre();
        assertTrue(result == 1);
    }

}