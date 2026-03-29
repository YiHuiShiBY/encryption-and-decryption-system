# 密码加解密系统

## 简介
这是一个简单易用的密码加解密工具，采用AES加密算法保护您的密码安全。本系统由仪绘士BY创作，提供图形化界面，操作简单直观。

## GitHub仓库
https://github.com/YiHuiShiBY/encryption-and-decryption-system

## 功能特点
- **加密功能**：将明文密码加密为Base64格式的密文
- **解密功能**：将Base64格式的密文解密为原始密码
- **图形化界面**：简洁友好的用户界面
- **一键复制**：方便快捷地复制加密/解密结果
- **AES加密**：使用安全的AES加密算法

## 使用方法

### 加密密码
1. 双击运行 `encryption-and-decryption-system.exe`
2. 点击界面上的"加密"按钮
3. 在"密钥"输入框中输入您的密钥（用于加密和解密的密码）
4. 在"密码"输入框中输入要加密的明文密码
5. 点击"执行"按钮
6. 加密结果会显示在结果区域，点击"复制结果"按钮可复制到剪贴板

### 解密密码
1. 双击运行 `encryption-and-decryption-system.exe`
2. 点击界面上的"解密"按钮
3. 在"密钥"输入框中输入之前加密时使用的密钥
4. 在"加密后的密码"输入框中输入要解密的Base64字符串
5. 点击"执行"按钮
6. 解密后的原始密码会显示在结果区域

## 注意事项
- 请妥善保管您的密钥，丢失密钥将无法解密密码
- 密钥长度建议不少于8个字符
- 加密和解密必须使用相同的密钥
- 请勿在不安全的环境中使用本工具

## 技术说明
- 加密算法：AES (Advanced Encryption Standard)
- 密钥处理：自动填充至32字节
- IV（初始化向量）：使用零字节数组
- 输出格式：Base64编码

## 系统要求
- Windows操作系统
- .NET Framework 4.0或更高版本

## 文件说明
- `密码加解密系统.exe` - 可执行程序文件
- `密码加解密系统.ps1` - PowerShell源代码文件

## 联系方式
如有问题或建议，请联系：

**邮箱**：yihuishi_by@163.com

---

**由仪绘士BY创作**

---

# Password Encryption and Decryption System

## Introduction
This is a simple and easy-to-use password encryption and decryption tool that uses the AES encryption algorithm to keep your passwords secure. Created by YiHuiShiBY, this system provides a graphical interface that is straightforward and intuitive to operate.

## GitHub Repository
https://github.com/YiHuiShiBY/encryption-and-decryption-system

## Features
- **Encryption**: Encrypt plaintext passwords into Base64-encoded ciphertext
- **Decryption**: Decrypt Base64-encoded ciphertext back to original passwords
- **Graphical User Interface**: Clean and user-friendly interface
- **One-Click Copy**: Quickly copy encryption or decryption results
- **AES Encryption**: Uses industry-standard secure AES encryption

## Usage

### Encrypt Password
1. Double-click to run `encryption-and-decryption-system.exe`
2. Click the **Encrypt** button on the interface
3. Enter your key in the **Key** input box (used for both encryption and decryption)
4. Enter the plaintext password you want to encrypt in the **Password** input box
5. Click the **Execute** button
6. The encrypted result will appear in the result area; click **Copy Result** to copy it to the clipboard

### Decrypt Password
1. Double-click to run `encryption-and-decryption-system.exe`
2. Click the **Decrypt** button on the interface
3. Enter the same key used during encryption in the **Key** input box
4. Paste the Base64 string you want to decrypt in the **Encrypted Password** input box
5. Click the **Execute** button
6. The decrypted original password will be displayed in the result area

## Important Notes
- Keep your key secure. If the key is lost, the password cannot be decrypted.
- It is recommended to use a key of at least 8 characters.
- Encryption and decryption require the same key.
- Do not use this tool in untrusted or insecure environments.

## Technical Specifications
- Encryption Algorithm: AES (Advanced Encryption Standard)
- Key Processing: Automatically padded to 32 bytes
- IV (Initialization Vector): Zero byte array
- Output Format: Base64 encoding

## System Requirements
- Windows operating system
- .NET Framework 4.0 or later

## File Description
- `密码加解密系统.exe` – Executable program file
- `密码加解密系统.ps1` – PowerShell source code file

## Contact Information
If you have any questions or suggestions, please contact:

**Email**: yihuishi_by@163.com

---

**Created by YiHuiShiBY**
