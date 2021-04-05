#' Create a dataframe of random employee level data
#'
#' Generate a dataframe of size integer n of employee level data
#'
#' @param n int, sample size of dataframe
#'
#' @return dataframe
#' @export
#'
#' @examples
#' bizstaff(10)
#' bizstaff(150)

bizstaff <- function(n){
  yearsemployed <- sample.int(25, n, replace = TRUE)
  income <- stats::rnorm(n, 60000, 6750) * (1.03 ^ yearsemployed)
  employeeID <- c(1:n)
  position <-
    c("Senior Analyst", "Senior Developer", "Senior Project Manager", "Public Relations Executive", "Brand Strategist", "Branch Manager",
      "Senior Executive", "Data Officer", "Financial Officer", " Managing Executive", "Cloud Architect", "Senior Market Analyst",
      "Junior Analyst", "Junior Developer", "Administrator", "Office Assistant", "Data Entry Assistant", "Junior Market Analyst", "File Clerk",
      "Junior Associate", "Customer Service Representative")

  first_names <- c("Mary", "Melissa", "Jennifer", "Elizabeth", "Barabra", "Susan", "Margaret", "Michelle", "Emily", "Rebecca",
                   "Kathy", "Amy", "Ruth", "Samantha", "Rachel", "Maria", "Ana", "Yuko", "Ayumi", "Cai", "Chun", "Bao", "Lian",
                   "Nuwa", "Daiyu", "Lin", "Yan", "Elena", "Fatima", "Olga", "Rosa", "Sandra", "Sarah", "Natalya", "Sunita", "Laura",
                   "Marina", "Ekaterina", "Zarha", "Jin", "Claudia", "Maryam", "Amina", "Anastaysia", "Angel", "Francisca", "Veronica",
                   "Asha", "Alice", "Isabel", "Salma", "Nadia", "Paula", "Maxine", "Charlotte", "Mia", "Louise", "Esma", "Tereza", "Ida",
                   "Ava", "Sofia", "Chloe", "Hannah", "Emilia", "Tamar", "Aurora", "Beatriz", "Ella", "Elif", "Abebi", "Adanya", "Barika",
                   "Dalia", "Faizah", "Femi", "Falala", "Imani", "Jamila", "Lehana", "Lulu", "Nailah", "Nakeisha", "Reta", "Shani", "Nora",
                   "Hazel", "Violet", "Lillian", "Savannah", "Valentina", "Ivy", "Gianna", "Delilah", "Arya", "Madeline", "Autumn", "Marley",
                   "Gabriella", "Claire", "Petra",
                   "Ekon", "Oluyemi", "Osei", "Rashidi", "Razi", "Thabiti", "Lukas", "Robin", "Elias", "Gunnar", "Jack", "Matthew", "Markus",
                   "Alejandro", "Carlos", "Ethan", "Tony", "William", "Joshua", "Juan", "Miguel", "Diego", "Jonathan", "Yusuf", "Hong", "Thomas",
                   "Jorge", "Sergey", "Alexsey", "Hassan", "Victor", "Charlie", "Mark", "Ahmad", "Roberto", "Timothy", "Dmitriy", "Eric",
                   "Fernando", "Omar", "Sanjay", "Francis", "Dennis", "Stephen", "Gabriel", "Andrew", "Abdullah", "Rafael", "Eva", "Andre",
                   "Kevin", "Ronald", "Roman", "Ismail", "Walter", "Ben", "Khalid", "Bruno", " Mario", "Kenneth", "Raul", "Rafi", "Betty",
                   "Raj", "Hussein", "Mikhail", "Giuseppe", "Dinesh", "Javier", "Moses", "Luigi", "Alfredo", "Ian", "Kian", "Issac", "Raymond",
                   "Kamaru", "Saeed", "Edgar", "Jason", "Ludwig", "Xiaodong", "Scott", "Bradley", "Nick", "Hans", "Viktor", "Armando","Cory",
                   "Adrian", "Karim", "Weidong", "Wilson", "Greg", "Logan", "Joe", "Justin", "Prakash", "Darren", "Andy", "Pritam")

  last_names <- c("Johnson", "Jones", "Jackson", "Williams", "Garcia", "Rodriguez","Anderson", "Lee", "Walker", "Nguyen",
                  "Nelson", "Baker", "Hall", "Zhang", "Rogers", "Ortiz", "Kim", "Park", "Kumar", "Hughes", "Foster", "Patel",
                  "Price", "Sharpe", "De Jong", "Rossi", "Khan", "Kechichian", "Wagner", "Hickey", "McElroy", "Mwangi", "Ngoma",
                  "Ali", "Johannes", "Kamara", "Smith", "Harris", "Latu", "Rolle", "Clarke", "Joseph", "Brown", "Glover", "Wang",
                  "Sato", "Sok", "Chen", "Devi", "Mohamed", "Cohen", "Hawking", "Jovanovic", "Ivanov", "Kazlauzkas", "Peters",
                  "Muller", "Huang", "Zhao", "Ahmed", "Da Silva", "Akter", "Gao", "Song", "Kaur", "Hussain", "Ibrahim", "Xiao",
                  "Kumari", "Bibi", "Begum", "Shah", "Pham", "Diaz", "Peralta", "Musa", "Gong", "Diallo", "Long", "Shaikh", "Bakhash",
                  "Morales", "Abdullahi", "Abubakar", "Khatoon", "Oliveira", "Castillo", "Mendoza", "Yi", "Usman", "Sinha", "Miller", "Vasquez",
                  "James", "Mustafa", "Takahashi", "Suzuki", "Suarez", "Moore", "Yamamoto", "Nakamura", "Schmidt", "Gruber", "Mertens",
                  "Dimitrov", "Babic", "Svoboda", "Kask", "Johansson", "Dubois", "Durand", "Leroy", "Bertrand", "Mamedovi", "Weber",
                  "Papadopoulos", "Georgiou", "Nagy", "O'Sullivan", "Doyle", "Esposito", "Greco", "Conti", "Lombardi", "Petrauskas",
                  "Sokolov", "Abara", "Abebe", "Adebayo", "Chidozie", "Eke", "Folorunsho", "Jelani", "Kenyatta", "Nnadi", "Nwadike",
                  "Okoro", "Okoye", "Olatunji", "Akua", "Emeka", "Imamu", "Mbafeno", "Magoro", "Ohakim", "Bonant", "Cherian", "Heisenberg")

  GivenName <- sample(first_names, size = n, replace = TRUE)
  Surname <-sample(last_names, size = n, replace = TRUE)
  Position <- sample(position, size = n, replace = TRUE)

  temp <- data.frame(employeeID, GivenName, Surname, income, yearsemployed, Position)
  temp
}
