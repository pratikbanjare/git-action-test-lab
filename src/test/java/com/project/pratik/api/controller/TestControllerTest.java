package com.project.pratik.api.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringJUnit4ClassRunner.class)
public class TestControllerTest {

    @InjectMocks
    TestController testController;

    @Test
    public void test () {
        String ans = testController.helloWorld();

        assertEquals("Hello world!!!", ans);
    }

}