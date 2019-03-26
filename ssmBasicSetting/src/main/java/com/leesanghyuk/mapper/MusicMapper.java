package com.leesanghyuk.mapper;

import com.leesanghyuk.model.Music;
import org.springframework.stereotype.Component;

@Component
public interface MusicMapper {
    void saveMusic(Music music);
    Music selectMusicById(Integer id);
}
