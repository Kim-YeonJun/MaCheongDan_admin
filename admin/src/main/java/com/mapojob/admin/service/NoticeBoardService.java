package com.mapojob.admin.service;

import com.mapojob.admin.domain.NoticeBoardDto;
import com.mapojob.admin.domain.SearchCondition;

import java.util.List;
import java.util.Map;

public interface NoticeBoardService {
    int getCount() throws Exception;

    int remove(Integer bno, String writer) throws Exception;

    int write(NoticeBoardDto dto) throws Exception;

    List<NoticeBoardDto> getList() throws Exception;

    NoticeBoardDto read(Integer bno) throws Exception;

    public List<NoticeBoardDto> getPage(Map map) throws Exception;

    public int modify(NoticeBoardDto boardDto) throws Exception;

    public int getSearchResultCnt(SearchCondition sc) throws Exception;

    public List<NoticeBoardDto> getSearchResultPage(SearchCondition sc) throws Exception;
}
