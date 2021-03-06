package whu.eres.cartolab.geo;

import net.sf.json.JSONObject;
import whu.eres.cartolab.db.esri.ShapeFile;

import java.io.File;
import java.util.*;

public class InfoAmount {

    public long textLenth = 0;
    public long figureLength = 0;
    public long imageLength = 0;
    public long vedioLength = 0;
    public long audioLength = 0;
    public long flashLength = 0;
    public long modelLength = 0;

    public InfoAmount() {}

    public InfoAmount(long textLenth, long figureLength, long imageLength, long vedioLength,
                      long audioLength, long flashLength, long modelLength) {
        this.textLenth = textLenth;
        this.figureLength = figureLength;
        this.imageLength = imageLength;
        this.vedioLength = vedioLength;
        this.audioLength = audioLength;
        this.flashLength = flashLength;
        this.modelLength = modelLength;
    }

    public static long countTextLength(String text) {
        if(text == null) {
            return 0;
        }
        return text.length();
    }

    public static long countTextsLength(List<String> texts) {
        long length = 0;
        for(String text : texts) {
            length += countTextLength(text);
        }
        return length;
    }

    public static long countFiureLength(String shpPath, int fid) {
        return ShapeFile.getInfoAmountByFid(shpPath, fid);
    }

    public static long countImageLength(String imagePath) {
        File imageFile = new File(imagePath);
        if(imageFile.exists()) {
            return imageFile.length();
        }
        return 0;
    }

    public static long countImagesLength(List<String> imagePaths) {
        long length = 0;
        for(String imagePath : imagePaths) {
            length += countImageLength(imagePath);
        }
        return length;
    }

    public static long countImagesLength(List<String> imagePaths, String pref) {
        long length = 0;
        for(String imagePath : imagePaths) {
            File imageFile = new File(pref + imagePath);
            if (imageFile.exists()) {
                length += imageFile.length();
            }
        }
        return length;
    }

    public static long countVedioLength(Map<String, Long> vedioMap) {
        return countMapLength(vedioMap);
    }

    public static long countAudioLength(Map audioMap) {
        return countMapLength(audioMap);
    }

    public static long countFlashLength(Map flashMap) {
        return countMapLength(flashMap);
    }

    public static long countModelLength(String modelPath) {
        return countImageLength(modelPath);
    }

    public static long countModelsLength(List<String> modelPaths, String pref) {
        return countImagesLength(modelPaths, pref);
    }

    public static long countModelsLength(Map models, String pref) {
        long length = 0L;
        for(Object _key : models.keySet()) {
            String modelPath = _key.toString();
            File modelFile = new File(pref + modelPath);
            if (modelFile.exists()) {
                length += modelFile.length();
            }
        }
        return length;
    }

    public static long countModelLength(Map modelMap) {
        return countMapLength(modelMap);
    }

    public static long countMapLength(Map map) {
        long length = 0;
        for(Object _key : map.keySet()) {
            try {
//            String key = _key.toString();
                long len = (long) map.get(_key);
                length += len;
            } catch (Exception exp) {

            }
        }
        return length;
    }


    public String toString() {
        return "textLenth: " + textLenth + "\n" +
                "figureLength: " + figureLength + "\n" +
                "imageLength: " + imageLength + "\n" +
                "vedioLength: " + vedioLength + "\n" +
                "audioLength: " + audioLength + "\n" +
                "flashLength: " + flashLength + "\n" +
                "modelLength: " + modelLength;
    }

    public String toInfoString() {
        return "文本: " + textLenth + "字节, " +
                "图形: " + figureLength + "字节, " +
                "图像: " + imageLength + "字节, " +
                "视频: " + vedioLength + "秒, " +
                "音频: " + audioLength + "秒, " +
                "动画: " + flashLength + "秒, " +
                "三维模型: " + modelLength + "字节. ";
    }


    public String toJson() {
        JSONObject jo = new JSONObject();
        jo.put("textLenth", textLenth);
        jo.put("figureLength", figureLength);
        jo.put("imageLength", imageLength);
        jo.put("vedioLength", vedioLength);
        jo.put("audioLength", audioLength);
        jo.put("flashLength", flashLength);
        jo.put("modelLength", modelLength);
        String str = jo.toString();
        return str;
    }


    public static InfoAmount add(InfoAmount ia1, InfoAmount ia2) {
        InfoAmount ia = new InfoAmount();
        ia.textLenth = ia1.textLenth + ia2.textLenth;
        ia.figureLength = ia1.figureLength + ia2.figureLength;
        ia.imageLength = ia1.imageLength + ia2.imageLength;
        ia.vedioLength = ia1.vedioLength + ia2.vedioLength;
        ia.audioLength = ia1.audioLength + ia2.audioLength;
        ia.flashLength = ia1.flashLength + ia2.flashLength;
        ia.modelLength = ia1.modelLength + ia2.modelLength;
        return ia;
    }

}
