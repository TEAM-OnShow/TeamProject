package qna.model;
 
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("qnaDao")
public class QnaDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace = "qna.mapper";

}