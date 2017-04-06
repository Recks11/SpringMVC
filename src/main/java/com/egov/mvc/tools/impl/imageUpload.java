package com.egov.mvc.tools.impl;

import com.egov.mvc.tools.imageUploadService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by Ijiekhuamen Rex
 * on 4/6/2017.
 */
@Service
public class imageUpload implements imageUploadService {

    private long id;

    private Path path;

    private MultipartFile image;

    public Path getPath() {
        return path;
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public imageUpload(){}

    public void upload(HttpServletRequest request, String location){
        MultipartFile image = this.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\resources\\images\\"+location+"\\"+this.getId()+".png");

        if(image != null && !image.isEmpty()){
            try{
                image.transferTo(new File(path.toString()));
                System.out.println("image uploaded to" + path.toString());
            }catch(Exception e){
                e.printStackTrace();
                throw new RuntimeException("error uploading image");

            }
        }
    }

}
