package com.leesanghyuk.web;

import com.leesanghyuk.config.WebConfig;
import com.leesanghyuk.mapper.MusicMapper;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:/spring-mybatis.xml")
public class HomeControllerTest {
    @Autowired
    MusicMapper musicMapper;
    @Test
    public void isExsist(){
      Assert.assertNotNull(musicMapper);
  }
}
