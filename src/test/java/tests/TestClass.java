package tests;

import projects.entity.Project;

public class TestClass {
	public static void main(String[] args) {
		Class<Project> testProject = Project.class;
		
		System.out.println(testProject.toString());
	}
}
	

