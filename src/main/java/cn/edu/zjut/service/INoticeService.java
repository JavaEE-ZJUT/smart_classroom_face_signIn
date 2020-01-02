package cn.edu.zjut.service;

import cn.edu.zjut.po.Notice;

public interface INoticeService {
    boolean makeNotice(Notice notice);
    boolean searchNotice(int teaID);
}
