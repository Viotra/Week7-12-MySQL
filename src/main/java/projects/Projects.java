//package projects;
//
//import java.sql.Connection;
//import java.time.LocalTime;
//import java.util.List;
//import java.util.Objects;
//import java.util.Scanner;
//
//import projects.dao.DbConnection;
//import projects.exception.DbException;
//import projects.service.ProjectService;
//
//public class Projects {
//
////	private List<String> operations = List.of(
////			"1) Add a project"
////			);
////	
//	private Scanner scanner = new Scanner(System.in);
//	private ProjectService projectService = new ProjectService();
//	// @formatter:off
//	private List<String> operations = List.of(
//			"1) Create and populate all tables",
//			"2) Add a project"
//	);
//	
//
//	public static void main(String[] args) {
//		new Projects().displayMenu();
//	}
//	private void displayMenu() {
//		// TODO Auto-generated method stub
//		boolean done = false;
//		
//		while (!done) {
//			
//			try {
//				int operation = getOperation();
//				
//				switch(operation) {
//					case -1:
//						done = exitMenu();
//						break;
//					case 1:
//						createTables();
//						break;
//					case 2:
//						addProject();
//						break;
//					default:
//						System.out.println("\n" + operation + " is not valid. Try again.");
//						break;
//				}
//			}
//			catch(Exception e) {
//				System.out.println("\nError: " + e.toString() + " Try again.");
//			}
//		}
//	}
//	private void addProject() {
//		String name = getStringInput("Enter the project name");
//		String notes = getStringInput("Enter project notes");
//		Integer numServings = getIntInput("Enter number of materials");
//		
////		LocalTime projectTime = minutesToLocalTime(numServings);
//		
//	}
//	private void createTables() {
//		projectService.createAndPopulateTables();
//		System.out.println("\nTables created and populated!");
//	}
//	private boolean exitMenu() {
//		System.out.println("\nExiting the menu.");
//		return true;
//	}
//	private int getOperation() {
//		printOperations();
//		Integer op = getIntInput("Enter an operation number (press Enter to quit.)");
//		
//		return Objects.isNull(op) ? -1 : op;
//	}
//	
//	private void printOperations() {
//		// TODO Auto-generated method stub
//		System.out.println();
//		System.out.println("Here's what you can do:");
//		
//		operations.forEach(op -> System.out.println(op));	
//	}
//
//	private Integer getIntInput(String prompt) {
//		String input = getStringInput(prompt);
//		
//		if(Objects.isNull(input)) {
//			return null;
//		}
//		
//		try {
//			return Integer.parseInt(input);
//		}
//		catch(NumberFormatException e) {
//			throw new DbException(input + " is not a valid number.");
//		}
//	}//
//	private Double getDoubleInput(String prompt) {
//		String input = getStringInput(prompt);
//		
//		if(Objects.isNull(input)) {
//			return null;
//		}
//		
//		try {
//			return Double.parseDouble(input);
//		}
//		catch(NumberFormatException e) {
//			throw new DbException(input + " is not a valid number.");
//		}
//	}	
//	private String getStringInput(String prompt) {
//		System.out.println(prompt + ": ");
//		String line = scanner.nextLine();
//		
//		return line.isBlank() ? null : line.trim();
//	}
//}
