# s3shell

Interactive shell and reconnaissance toolkit for public **Amazon S3** buckets using the AWS CLI.

Features:

- Interactive S3 navigation (`ls`, `cd`, `pwd`)
- Recursive bucket listing (`tree`)
- Search files in buckets
- View remote files without downloading (`cat`, `head`, `grep`)
- Sensitive file discovery
- Recursive downloads
- File metadata inspection
- Public write permission testing
- Domain → bucket enumeration

---

## Installation

```bash
git clone https://github.com/yourusername/s3shell.git && cd s3shell && chmod +x setup.sh && ./setup.sh
```

---

## Usage

Start the shell:

```bash
s3shell
```

Example:

```bash
s3://> buckets
s3://> use example-bucket
s3://example-bucket/> tree
s3://example-bucket/> scan
```

---

## Requirements

- AWS CLI
- Bash
- Linux / macOS

The tool uses **`--no-sign-request`** by default, so no AWS credentials are required when accessing public buckets.

---

## Disclaimer

This tool is intended for **security research and educational purposes only**.  
Only test buckets you are authorized to access.
