package Entity;

import java.util.Arrays;

public class Course {

    private int id;
    private String name;
    private String price;
    private String position;
    private String window;
    private String tag;
    private String batching;
    private String cookingTechniques;
    private byte[] pic;
    private String reason;
    private String loc_name;

    public String getLoc_name() {
        return loc_name;
    }

    public void setLoc_name(String loc_name) {
        this.loc_name = loc_name;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getWindow() {
        return window;
    }

    public void setWindow(String window) {
        this.window = window;
    }

    public String getBatching() {
        return batching;
    }

    public void setBatching(String batching) {
        this.batching = batching;
    }

    public String getCookingTechniques() {
        return cookingTechniques;
    }

    public void setCookingTechniques(String cookingTechniques) {
        this.cookingTechniques = cookingTechniques;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescribe() {
        return window;
    }

    public void setDescribe(String describe) {
        this.window = describe;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", position='" + position + '\'' +
                ", window='" + window + '\'' +
                ", tag='" + tag + '\'' +
                ", batching='" + batching + '\'' +
                ", cookingTechniques='" + cookingTechniques + '\'' +
                ", reason='" + reason + '\'' +
                '}';
    }
}
