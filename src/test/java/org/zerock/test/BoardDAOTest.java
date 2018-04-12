package org.zerock.test;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.persistance.BoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })

public class BoardDAOTest {

	@Inject
	private BoardDAO dao;

	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);

//	@Test
//	public void testCreate() throws Exception {
//		BoardVO board = new BoardVO();
//		board.setTitle("���ο� ���� �ֽ��ϴ�");
//		board.setContent("���ο� ���� �ֽ��ϴ�.");
//		board.setWriter("user00");
//		dao.create(board);
//	}
	
	
//	@Test
//	public void testRead() throws Exception{
//		logger.info(dao.read(1).toString());
//	}

	
//	@Test
//	public void testUpdate() throws Exception{
//		BoardVO board = new BoardVO();
//		board.setBno(1);
//		board.setTitle("������ ���Դϴ�");
//		board.setContent("���� �׽�Ʈ");
//        dao.update(board);
//	}
	
	
	@Test
	public void testDelete() throws Exception {
		dao.delete(1);
	}
	
}
