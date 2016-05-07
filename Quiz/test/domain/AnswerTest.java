package domain;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class AnswerTest {

	private Answer answer;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {

		answer = new Answer();
	}

	@After
	public void tearDown() throws Exception {
		answer = null;
	}

	@Test
	public void testsetAnswerAllOk() {

		answer.setAnswerText("Answer");
		assertEquals("Answer", answer.getAnswerText());
	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testsetAnswerNull() {

		answer.setAnswerText(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testsetAnswerEmptyString() {

		answer.setAnswerText("");

	}

	@Test
	public void testSetCorrectAllOk() {

		answer.setCorrect(true);
		assertEquals(true, answer.isCorrect());
	}

}
