package com.mapojob.admin.service;

import com.mapojob.admin.dao.NoticeBoardDao;
import com.mapojob.admin.domain.NoticeBoardDto;
import com.mapojob.admin.domain.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

    @Autowired
    NoticeBoardDao noticeBoardDao;

    @Override
    public int getCount() throws Exception {
        return noticeBoardDao.count();
    }

    @Override
    public int remove(Integer bno, String writer) throws Exception {
        return noticeBoardDao.delete(bno, writer);
    }

    @Override
    public int write(NoticeBoardDto dto) throws Exception {
        return noticeBoardDao.insert(dto);
    }

    @Override
    public List<NoticeBoardDto> getList() throws Exception {
        return noticeBoardDao.selectAll();
    }

    @Override
    public NoticeBoardDto read(Integer bno) throws Exception {
        NoticeBoardDto dto = noticeBoardDao.select(bno);
        noticeBoardDao.increaseViewCnt(bno);
        return dto;
    }

    @Override
    public List<NoticeBoardDto> getPage(Map map) throws Exception {
        return noticeBoardDao.selectPage(map);
    }

    @Override
    public int modify(NoticeBoardDto boardDto) throws Exception {
        return noticeBoardDao.update(boardDto);
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return noticeBoardDao.searchResultCnt(sc);
    }

    @Override
    public List<NoticeBoardDto> getSearchResultPage(SearchCondition sc) throws Exception {
        return noticeBoardDao.searchSelectPage(sc);
    }
}
