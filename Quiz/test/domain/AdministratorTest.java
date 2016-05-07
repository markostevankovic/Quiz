package domain;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class AdministratorTest {

	private Administrator administrator;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {

		administrator = new Administrator();
	}

	@After
	public void tearDown() throws Exception {

		administrator = null;
	}

	@Test
	public void testNameAllOk() {

		Administrator a = new Administrator("Jessica ", "Alba", "Fantastic4");
		String name = a.toString();

		assertEquals(name, "jessica.alba");
	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetFirstNameNull() {

		administrator.setFirstName(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetFirstNameEmptyString() {

		administrator.setFirstName("");

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetLastNameNull() {

		administrator.setLastName(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetLastNameEmptyString() {

		administrator.setLastName("");

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetPasswordNull() {

		administrator.setPassword(null);

	}

	@Test(expected = java.lang.RuntimeException.class)
	public void testSetPasswordEmptyString() {

		administrator.setPassword("");

	}

}