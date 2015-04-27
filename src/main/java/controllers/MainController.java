package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.w3c.dom.*;
import org.xml.sax.SAXException;
import spring.entity.User;
import spring.repository.UserRepository;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;


@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired @Qualifier("UserRepository")
    private UserRepository userRepository;

    @RequestMapping
    public String mainPage() {
        return "index";
    }

    @RequestMapping(value = "/create-user")
     public String createUserPage() {
        return "createUser";
    }

    @RequestMapping(value = "/create-user-post")
    public String createUserPost(@RequestParam("login") String login) throws IOException, ParserConfigurationException, SAXException {

        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        Document doc = builder.parse("http://steamcommunity.com/id/" + login +"/?xml=1&l=english");

        NodeList nodes = doc.getElementsByTagName("profile");
        User user = new User();
        for (int i = 0; i < nodes.getLength(); i++) {
            Element element = (Element) nodes.item(i);
            NodeList title = element.getElementsByTagName("steamID");
            Element line = (Element) title.item(0);
            System.out.println("steamID: " + getCharacterDataFromElement(line));
            user.setName(getCharacterDataFromElement(line));
        }

        for (int i = 0; i < nodes.getLength(); i++) {
            Element element = (Element) nodes.item(i);
            NodeList title = element.getElementsByTagName("avatarFull");
            Element line = (Element) title.item(0);
            System.out.println("avatarFull: " + getCharacterDataFromElement(line));
            user.setImageUrl(getCharacterDataFromElement(line));
        }

        userRepository.save(user);
        return "createUser";
    }

    public static String getCharacterDataFromElement(Element e) {
        Node child = e.getFirstChild();
        if (child instanceof CharacterData) {
            CharacterData cd = (CharacterData) child;
            return cd.getData();
        }
        return "";
    }

    @RequestMapping("/show_all_user")
    private String showAllUsers(ModelMap modelMap) {
        List<User> userList = userRepository.findAll();
        modelMap.addAttribute("users" , userList);
        return "show_users";
    }
}
