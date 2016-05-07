package domain;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class QuestionTest {

	private Question question;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		question = new Question();
	}

	@After
	public void tearDown() throws Exception {
		question = null;
	}

	@Test
	public void testSetDescriptionAllOk() {

		question.setDescription("Who originally developed java?");
		assertEquals("Who originally developed java?", question.getDescription());
	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetDescriptionNull() {

		question.setDescription(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetDescriptionEmptyString() {

		question.setDescription("");

	}

}
