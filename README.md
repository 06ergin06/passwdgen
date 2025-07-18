# Password Generator

A simple Bash script that generates random passwords with customizable length and character types.

## Features

- **Custom Length**: User can specify desired password length
- **Multiple Character Types**: Includes symbols, numbers, lowercase and uppercase letters
- **Random Selection**: Uses secure random selection for each character position
- **Balanced Distribution**: Each character type has equal probability of being selected
- **Simple Interface**: Easy-to-use command-line interface

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
./script.sh
```

## Sample Output

```text
./script.sh
Welcome to Password Generator
Enter password length : 12
Generated password : A7!xB9#mK2@p
```

```text
./script.sh
Welcome to Password Generator
Enter password length : 8
Generated password : f3$H9kL#
```