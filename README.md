# Password Generator

A simple Bash script that generates random passwords with customizable length and character types.

## Features

- **Custom Length**: User can specify desired password length via command-line argument (default: 20)
- **Input Validation**: Prevents negative password lengths
- **Multiple Character Types**: Includes symbols, numbers, lowercase and uppercase letters
- **Random Selection**: Uses secure random selection for each character position
- **Balanced Distribution**: Each character type has equal probability of being selected
- **Simple Interface**: Easy-to-use command-line interface
- **GPL v3 Licensed**: Free and open-source software

## Character Sets

The script uses the following character sets:

- **Symbols**: `! ^ # + [ ] * \ ? . , ; @ & { }`
- **Numbers**: `0-9`
- **Lowercase**: `a-z`
- **Uppercase**: `A-Z`

## Installation

### Download the Script

You can download the script directly using `curl` or `wget`:

```bash
# Using curl
curl -O https://raw.githubusercontent.com/06ergin06/passwdgen/main/script.sh

# Using wget
wget https://raw.githubusercontent.com/06ergin06/passwdgen/main/script.sh

# Or clone the entire repository
git clone https://github.com/06ergin06/passwdgen.git
cd passwdgen
```

## Usage

Make the script executable and run it:

```bash
chmod +x script.sh

# Generate password with default length (20 characters)
./script.sh

# Generate password with custom length
./script.sh 15

# Generate shorter password
./script.sh 8
```

**Parameters:**

- `length` (optional): Password length (default: 20, must be positive)

## Sample Output

```text
$ ./script.sh
Welcome to Password Generator
Generated password : A7!xB9#mK2@pQw5*Zv3]

$ ./script.sh 12
Welcome to Password Generator
Generated password : f3$H9kL#Xy2@

$ ./script.sh 8
Welcome to Password Generator
Generated password : m5&Rf!7N

$ ./script.sh -5
Welcome to Password Generator
Password length cannot be negative.
```
