package member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myMemberDao")
public class MemberDao {
	
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMember(Member member) {
		int cnt = sqlSessionTemplate.insert(namespace+".InsertMember",member);
		return cnt;
	}

	public Member getData(String id) {
		Member member = sqlSessionTemplate.selectOne(namespace+".GetData",id);
		return member;
	}

}
