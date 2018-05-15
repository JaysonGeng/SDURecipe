package Servlet;

import Dao.PictureDao;
import Dao.PictureDao;

public class FindBookPictureImpl  {
    private PictureDao bdi = new PictureDao();
    public byte[] findBookPicture(int bookId) {

        return bdi.queryPicture(bookId);
    }

}
