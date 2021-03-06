package whu.eres.cartolab.db.esri;

import java.io.Serializable;
import java.util.*;

import org.geotools.graph.build.line.DirectedLineStringGraphGenerator;
import net.sf.json.*;
import org.opengis.feature.simple.SimpleFeature;


/**
 * GIS对象基类定义。
 *
 * @author elon
 * @version 2018年6月26日
 */
public abstract class GISObjectBase implements Serializable {

    private static final long serialVersionUID = -6147262367078689317L;

    /**
     * 对象类型枚举
     */
    private final EnumGISObjectType type;

    private SimpleFeature simpleFeature = null;

    /**
     * 属性列信息
     */
    private List<ShapeFieldInfo> attrFieldList = new ArrayList<>();

    /**
     * 属性值信息<属性名称, 属性值>
     */
    private Map<String, Object> attributeMap = new HashMap<>();

    protected GISObjectBase(EnumGISObjectType type, SimpleFeature simpleFeature,
                            List<ShapeFieldInfo> attrFieldList){
        this.type = type;
        this.simpleFeature = simpleFeature;
        this.attrFieldList = attrFieldList;
    }

    public EnumGISObjectType getType() {
        return type;
    }

    public SimpleFeature getSimpleFeature() {
        return simpleFeature;
    }

    public abstract String getSpatalString();

    public JSONObject toJSONObject() {
        JSONObject obj = new JSONObject();
        for(String _key : attributeMap.keySet()) {
            if("the_geom".equalsIgnoreCase(_key)) {
                continue;
            }
            Object _val = attributeMap.get(_key);
            obj.put(_key, _val);
        }
        obj.put("spaType", type.getSpaType());
        String shape = getSpatalString();
        obj.put("shape", shape);
        return obj;
    }

    public Map<String, Object> getAttributeMap() {
        return attributeMap;
    }

    public void setAttributeMap(Map<String, Object> attributeMap) {
        this.attributeMap = attributeMap;
    }

    public void addAttribute(String attrName, Object value) {
        attributeMap.put(attrName, value);
    }

    public void setSimpleFeature(SimpleFeature simpleFeature) {
        this.simpleFeature = simpleFeature;
    }

    public List<ShapeFieldInfo> getAttrFieldList() {
        return attrFieldList;
    }

    public void setAttrFieldList(List<ShapeFieldInfo> attrFieldList) {
        this.attrFieldList = attrFieldList;
    }

}
