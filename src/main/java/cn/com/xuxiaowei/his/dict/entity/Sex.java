package cn.com.xuxiaowei.his.dict.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 个人基本信息分类与代码 第1部分:人的性别代码，参见：http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=0FC942D542BC6EE3C707B2647EF81CD8
 * </p>
 *
 * @author 徐晓伟
 * @since 2020-09-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("DICT_SEX")
public class Sex implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 性别主键：PK_DICT_SEX__ID
     */
    @TableId("SEX_ID")
    private Long sexId;

    /**
     * 性别代码，长度1，不为空：NN_DICT_SEX_SEX_CODE，唯一：UK_DICT_SEX__CODE
     */
    @TableField("SEX_CODE")
    private String sexCode;

    /**
     * 性别名称，长度6(中文占1个字符)，不为空：NN_DICT_SEX_SEX_NAME
     */
    @TableField("SEX_NAME")
    private String sexName;


    public static final String SEX_ID = "SEX_ID";

    public static final String SEX_CODE = "SEX_CODE";

    public static final String SEX_NAME = "SEX_NAME";

}
