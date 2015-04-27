package spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.util.List;

@Entity(name = "sys_user")
public class User {

    @Id
    @GeneratedValue
    private long id;

    private String name;
    private String imageUrl;

    @ManyToMany(mappedBy = "userList")
    private List<Weapon> weaponList;

    @ManyToMany(mappedBy = "userList")
    private List<Game> gameList;

    public List<Weapon> getWeaponList() {
        return weaponList;
    }

    public void setWeaponList(List<Weapon> weaponList) {
        this.weaponList = weaponList;
    }

    public List<Game> getGameList() {
        return gameList;
    }

    public void setGameList(List<Game> gameList) {
        this.gameList = gameList;
    }

    public long getId() {
        return id;
    }


    public void setId(long id) {
        this.id = id;
    }


    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
