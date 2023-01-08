use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    let secret_number = rand::thread_rng().gen_range(1, 101);
    loop {

        println!("Guess a number between 1 - 100!");
        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Your guess was too small, try again."),
            Ordering::Greater => println!("Your guess was too big, try again."),
            Ordering::Equal => {
                println!("You win!");
                break;
            }
        }
    }
}