/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.challenge2;

import java.io.IOException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.apache.http.*;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/**
 *
 * @author James
 */
@Controller
public class MyController {

    @RequestMapping(value = {"/sendText"}, method = RequestMethod.POST)
    public String sendText(Model model, @RequestParam String phone, @RequestParam String message, HttpServletRequest request) throws IOException {

        final NameValuePair[] data = {
            new BasicNameValuePair("phone", phone),
            new BasicNameValuePair("message", message),
            new BasicNameValuePair("key", "3c985fc3414c7d16e91051b220852baa39bc16975ANwm6mLgQEX4IGtoseyGhotR")
        };
        HttpClient httpClient = HttpClients.createMinimal();
        HttpPost httpPost = new HttpPost("https://textbelt.com/text");
        httpPost.setEntity(new UrlEncodedFormEntity(Arrays.asList(data)));
        HttpResponse httpResponse = httpClient.execute(httpPost);

        String responseString = EntityUtils.toString(httpResponse.getEntity());
        JSONObject response = new JSONObject(responseString);

        return "redirect:/";
    }

}
