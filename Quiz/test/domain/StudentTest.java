package domain;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class StudentTest {

	private Student student;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {

		student = new Student();
	}

	@After
	public void tearDown() throws Exception {

		student = null;
	}

	@Test
	public void testNameAllOk() {

		Student s = new Student(1111, 2011, "Brad", "Pitt", "8", 5);
		String name = s.toString();

		assertEquals(name, "Pitt.Brad.2011/1111");
	}

	@Test
	public void testResultsAllOk() {

		Student s = new Student(1111, 2011, "Brad", "Pitt", "8", 5);
		String results = s.toStringResult();

		assertEquals(results, "2011/1111 Pitt Brad: 5 points");
	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetFirstNameNull() {

		student.setFirstName(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetFirstNameEmptyString() {

		student.setFirstName("");

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetLastNameNull() {

		student.setLastName(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetLastNameEmptyString() {

		student.setLastName("");

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetPasswordNull() {

		student.setPassword(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetPasswordEmptyString() {

		student.setPassword("");

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetIndexNumberNegative() {

		student.setIndexNumber(-1);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetEnrollmentYearBefore2000() {

		student.setEnrollmentYear(1999);

	}

}
