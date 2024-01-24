use cruet::Inflector;
use std::io::{self, Read};

fn main() -> io::Result<()> {
    let args: Vec<_> = std::env::args().collect();
    if args.len() != 2 {
        eprintln!("Error: needs 1 argument");
        std::process::exit(1);
    }
    let inflector_type = &args[1];
    let mut input = String::new();
    io::stdin().read_to_string(&mut input)?;
    let output = match inflector_type.as_str() {
        "ada" | "ugly" => input.to_train_case().replace('-', "_"),
        "camel" => input.to_camel_case(),
        "class" => input.to_class_case(),
        "deconstantize" => input.deconstantize(),
        "demodulize" => input.demodulize(),
        "deordinalize" => input.deordinalize(),
        "foreign-key" => input.to_foreign_key(),
        "http" => input.to_title_case().replace(' ', "-"),
        "kebab" => input.to_kebab_case(),
        "ordinalize" => input.ordinalize(),
        "pascal" => input.to_pascal_case(),
        "plural" => input.to_plural(),
        "screaming" => input.to_screaming_snake_case(),
        "sentence" => input.to_sentence_case(),
        "singular" => input.to_singular(),
        "snake" => input.to_snake_case(),
        "table" => input.to_table_case(),
        "title" => input.to_title_case(),
        "train" => input.to_train_case(),
        _ => {
            eprintln!("Unknown type: {}", inflector_type);
            std::process::exit(1);
        }
    };
    println!("{}", output);
    Ok(())
}
