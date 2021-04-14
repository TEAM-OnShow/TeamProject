package order.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDao")
public class OrderDao {

	private String namespace = "order.model.Order.";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Order> getAllData(Map<String, String> map) {
		List<Order> list = sqlSessionTemplate.selectList(namespace+"GetAllData", map);
		return list;
	}

	public void insertData(String mid) {
		sqlSessionTemplate.insert(namespace+"InsertData", mid);
	}

	public int getMaxOrderOnum() {
		int cnt = sqlSessionTemplate.selectOne(namespace+"GetMaxOrderOnum");
		return cnt;
	}
	
}
