# 由仪绘士BY创作
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "密码加解密系统"
$form.Size = New-Object System.Drawing.Size(500, 400)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false

$mode = "encrypt"

$encryptBtn = New-Object System.Windows.Forms.Button
$encryptBtn.Text = "加密"
$encryptBtn.Location = New-Object System.Drawing.Point(50, 20)
$encryptBtn.Size = New-Object System.Drawing.Size(150, 40)
$encryptBtn.Font = New-Object System.Drawing.Font("Microsoft YaHei", 12)

$decryptBtn = New-Object System.Windows.Forms.Button
$decryptBtn.Text = "解密"
$decryptBtn.Location = New-Object System.Drawing.Point(280, 20)
$decryptBtn.Size = New-Object System.Drawing.Size(150, 40)
$decryptBtn.Font = New-Object System.Drawing.Font("Microsoft YaHei", 12)

$keyLabel = New-Object System.Windows.Forms.Label
$keyLabel.Text = "密钥:"
$keyLabel.Location = New-Object System.Drawing.Point(50, 80)
$keyLabel.Size = New-Object System.Drawing.Size(100, 25)
$keyLabel.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$keyTextBox = New-Object System.Windows.Forms.TextBox
$keyTextBox.Location = New-Object System.Drawing.Point(150, 80)
$keyTextBox.Size = New-Object System.Drawing.Size(280, 25)
$keyTextBox.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$inputLabel = New-Object System.Windows.Forms.Label
$inputLabel.Text = "密码:"
$inputLabel.Location = New-Object System.Drawing.Point(50, 120)
$inputLabel.Size = New-Object System.Drawing.Size(100, 25)
$inputLabel.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$inputTextBox = New-Object System.Windows.Forms.TextBox
$inputTextBox.Location = New-Object System.Drawing.Point(150, 120)
$inputTextBox.Size = New-Object System.Drawing.Size(280, 25)
$inputTextBox.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$executeBtn = New-Object System.Windows.Forms.Button
$executeBtn.Text = "执行"
$executeBtn.Location = New-Object System.Drawing.Point(150, 160)
$executeBtn.Size = New-Object System.Drawing.Size(200, 40)
$executeBtn.Font = New-Object System.Drawing.Font("Microsoft YaHei", 12)

$resultLabel = New-Object System.Windows.Forms.Label
$resultLabel.Text = "结果:"
$resultLabel.Location = New-Object System.Drawing.Point(50, 220)
$resultLabel.Size = New-Object System.Drawing.Size(100, 25)
$resultLabel.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$resultTextBox = New-Object System.Windows.Forms.TextBox
$resultTextBox.Location = New-Object System.Drawing.Point(50, 250)
$resultTextBox.Size = New-Object System.Drawing.Size(380, 80)
$resultTextBox.Multiline = $true
$resultTextBox.ScrollBars = "Vertical"
$resultTextBox.ReadOnly = $true
$resultTextBox.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$copyBtn = New-Object System.Windows.Forms.Button
$copyBtn.Text = "复制结果"
$copyBtn.Location = New-Object System.Drawing.Point(150, 340)
$copyBtn.Size = New-Object System.Drawing.Size(200, 35)
$copyBtn.Font = New-Object System.Drawing.Font("Microsoft YaHei", 10)

$encryptBtn.Add_Click({
    $script:mode = "encrypt"
    $inputLabel.Text = "密码:"
    $inputTextBox.Text = ""
    $resultTextBox.Text = ""
    $encryptBtn.BackColor = [System.Drawing.Color]::FromArgb(173, 216, 230)
    $decryptBtn.BackColor = [System.Drawing.Color]::FromArgb(240, 240, 240)
})

$decryptBtn.Add_Click({
    $script:mode = "decrypt"
    $inputLabel.Text = "加密后的密码:"
    $inputTextBox.Text = ""
    $resultTextBox.Text = ""
    $decryptBtn.BackColor = [System.Drawing.Color]::FromArgb(173, 216, 230)
    $encryptBtn.BackColor = [System.Drawing.Color]::FromArgb(240, 240, 240)
})

$executeBtn.Add_Click({
    $key = $keyTextBox.Text
    $input = $inputTextBox.Text
    
    if ($key -eq "" -or $input -eq "") {
        [System.Windows.Forms.MessageBox]::Show("请输入密钥和密码", "提示", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
        return
    }
    
    try {
        if ($script:mode -eq "encrypt") {
            $aes = New-Object Security.Cryptography.AesManaged
            $aes.Key = [Text.Encoding]::UTF8.GetBytes($key.PadRight(32).Substring(0,32))
            $aes.IV = New-Object byte[] 16
            $enc = $aes.CreateEncryptor().TransformFinalBlock([Text.Encoding]::UTF8.GetBytes($input),0,$input.Length)
            $result = [Convert]::ToBase64String($enc)
            $resultTextBox.Text = $result
        } else {
            $aes = New-Object Security.Cryptography.AesManaged
            $aes.Key = [Text.Encoding]::UTF8.GetBytes($key.PadRight(32).Substring(0,32))
            $aes.IV = New-Object byte[] 16
            $dec = $aes.CreateDecryptor().TransformFinalBlock([Convert]::FromBase64String($input),0,[Convert]::FromBase64String($input).Length)
            $result = [Text.Encoding]::UTF8.GetString($dec)
            $resultTextBox.Text = $result
        }
    } catch {
        [System.Windows.Forms.MessageBox]::Show("操作失败: " + $_.Exception.Message, "错误", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})

$copyBtn.Add_Click({
    if ($resultTextBox.Text -ne "") {
        [System.Windows.Forms.Clipboard]::SetText($resultTextBox.Text)
        [System.Windows.Forms.MessageBox]::Show("结果已复制到剪贴板", "提示", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    } else {
        [System.Windows.Forms.MessageBox]::Show("没有可复制的结果", "提示", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
    }
})

$form.Controls.Add($encryptBtn)
$form.Controls.Add($decryptBtn)
$form.Controls.Add($keyLabel)
$form.Controls.Add($keyTextBox)
$form.Controls.Add($inputLabel)
$form.Controls.Add($inputTextBox)
$form.Controls.Add($executeBtn)
$form.Controls.Add($resultLabel)
$form.Controls.Add($resultTextBox)
$form.Controls.Add($copyBtn)

$encryptBtn.BackColor = [System.Drawing.Color]::FromArgb(173, 216, 230)

[void]$form.ShowDialog()
