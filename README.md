# 密码加解密系统 / Password Encryption and Decryption System

## 简介 / Introduction

这是一个简单易用的密码加解密工具，采用AES加密算法保护您的密码安全。本系统由仪绘士BY创作，提供图形化界面，操作简单直观。

This is a simple and easy-to-use password encryption and decryption tool that uses AES encryption algorithm to protect your password security. This system was created by YiHuiShiBY, providing a graphical interface with simple and intuitive operation.

## GitHub仓库 / GitHub Repository

https://github.com/YiHuiShiBY/encryption-and-decryption-system

## 功能特点 / Features

- **加密功能**：将明文密码加密为Base64格式的密文
- **解密功能**：将Base64格式的密文解密为原始密码
- **图形化界面**：简洁友好的用户界面
- **一键复制**：方便快捷地复制加密/解密结果
- **AES加密**：使用安全的AES加密算法

- **Encryption Function**: Encrypt plaintext passwords into Base64 format ciphertext
- **Decryption Function**: Decrypt Base64 format ciphertext into original passwords
- **Graphical Interface**: Simple and user-friendly interface
- **One-click Copy**: Conveniently copy encryption/decryption results
- **AES Encryption**: Uses secure AES encryption algorithm

## 使用方法 / Usage

### 加密密码 / Encrypt Password

1. 双击运行 `密码加解密系统.exe`
2. 点击界面上的"加密"按钮
3. 在"密钥"输入框中输入您的密钥（用于加密和解密的密码）
4. 在"密码"输入框中输入要加密的明文密码
5. 点击"执行"按钮
1. Double-click to run `密码加解密系统.exe`
2. Click the "加密" (Encrypt) button on the interface
3. Enter your key in the "密钥" (Key) input box (used for encryption and decryption)
4. Enter the plaintext password to be encrypted in the "密码" (Password) input box
5. Click the "执行" (Execute) button
6. 加密结果会显示在结果区域，点击"复制结果"按钮可复制到剪贴板
6. The encryption result will be displayed in the result area, click the "复制结果" (Copy Result) button to copy to clipboard

### 解密密码 / Decrypt Password

1. 双击运行 `密码加解密系统.exe`
2. 点击界面上的"解密"按钮
3. 在"密钥"输入框中输入之前加密时使用的密钥
4. 在"加密后的密码"输入框中输入要解密的Base64字符串
5. 点击"执行"按钮
1. Double-click to run `密码加解密系统.exe`
2. Click the "解密" (Decrypt) button on the interface
3. Enter the key used during encryption in the "密钥" (Key) input box
4. Enter the Base64 string to be decrypted in the "加密后的密码" (Encrypted Password) input box
5. Click the "执行" (Execute) button
6. 解密后的原始密码会显示在结果区域
6. The decrypted original password will be displayed in the result area

## 注意事项 / Important Notes

- 请妥善保管您的密钥，丢失密钥将无法解密密码
- 密钥长度建议不少于8个字符
- 加密和解密必须使用相同的密钥
- 请勿在不安全的环境中使用本工具

- Please keep your key safe, losing the key will make it impossible to decrypt the password
- Key length is recommended to be at least 8 characters
- Encryption and decryption must use the same key
- Do not use this tool in an insecure environment

## 技术说明 / Technical Specifications

- 加密算法：AES (Advanced Encryption Standard)
- 密钥处理：自动填充至32字节
- IV（初始化向量）：使用零字节数组
- 输出格式：Base64编码

- Encryption Algorithm: AES (Advanced Encryption Standard)
- Key Processing: Automatically padded to 32 bytes
- IV (Initialization Vector): Uses zero byte array
- Output Format: Base64 encoding

## 系统要求 / System Requirements

- Windows操作系统
- .NET Framework 4.0或更高版本

- Windows Operating System
- .NET Framework 4.0 or higher

## 文件说明 / File Description

- `密码加解密系统.exe` - 可执行程序文件
- `密码加解密系统.ps1` - PowerShell源代码文件

- `密码加解密系统.exe` - Executable program file
- `密码加解密系统.ps1` - PowerShell source code file

## 联系方式 / Contact Information

如有问题或建议，请联系：

If you have any questions or suggestions, please contact:

**邮箱 / Email**：yihuishi_by@163.com

---

**由仪绘士BY创作 / Created by YiHuiShiBY**
