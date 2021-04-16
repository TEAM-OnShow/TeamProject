package member.model;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import utility.Paging;

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
	
	public List<Member> getDataList(Paging pageInfo, Map<String, String> map) {
		List<Member> lists = new ArrayList<Member>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		lists = sqlSessionTemplate.selectList(namespace+".GetDataList",map,rowBounds);
		return lists;
	}

	public int updateData(Member member) {
		int cnt = sqlSessionTemplate.update(namespace+".UpdateMember",member);
		return cnt;
	}

	public int getTotalCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	public Member findId(Member member) {
		Member findId = sqlSessionTemplate.selectOne(namespace+".FindId", member);
		return findId;
	}

	public Member findPw(Member member) {
		Member findPw = sqlSessionTemplate.selectOne(namespace+".FindPw", member);
		return findPw;
	}

	public int deleteData(String id) {
		int cnt = sqlSessionTemplate.delete(namespace+".DeleteData", id);
		return cnt;
	}

	

	

}
