package cn.com.xuxiaowei.his.threelevel.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 附件3：三级公立医院绩效考核住院病案首页数据采集质量与接口标准.xlsx RC001 性别值域代码表	此代码来源于国家标准《个人基本信息分类与代码》（GB/T 2261.1-2003）
 * </p>
 *
 * @author 徐晓伟
 * @since 2020-09-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("THREE_LEVEL_RC001")
public class Rc001 implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 附件3：三级公立医院绩效考核住院病案首页数据采集质量与接口标准.xlsx RC001 性别值域代码表 主键
     */
    @TableId("THREE_LEVEL_RC001_ID")
    private Long threeLevelRc001Id;

    /**
     * 性别代码
     */
    @TableField("CODE")
    private String code;

    /**
     * 性别名称
     */
    @TableField("NAME")
    private String name;


    public static final String THREE_LEVEL_RC001_ID = "THREE_LEVEL_RC001_ID";

    public static final String CODE = "CODE";

    public static final String NAME = "NAME";

}
