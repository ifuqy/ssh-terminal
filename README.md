# ssh-terminal

用于 Codex 的 SSH 终端技能，支持直接交互 SSH 和共享 tmux 会话，采用黑底、白字、亮蓝与鲜绿的高对比度配色。

## 安装

将此仓库克隆至个人 Codex skills 目录下的 `ssh-terminal` 文件夹，使 `SKILL.md` 位于该文件夹根目录。

```bash
git clone https://github.com/ifuqy/ssh-terminal.git ~/.codex/skills/ssh-terminal
```

## 使用

```text
使用 $ssh-terminal
服务器：my-server
用户名：myuser
模式：共享 tmux
会话名：codex_01
```

- 服务器支持 SSH 别名、主机名或 IP。
- 用户名、端口可省略，使用已有 SSH 配置。
- 模式可选择“直接终端”或“共享 tmux”。
- 共享会话名可自行指定，省略时自动生成。
- 远端需支持 SSH；共享模式还需安装 tmux。配色脚本适用于 Bash。

## 显示与交互

共享 tmux 模式可以让用户与 Codex 观察并操作同一个远端 pane。直接模式中的独立 SSH 连接不会自动同步命令或当前目录。

右侧终端的自动接入取决于当前 Codex 工具是否支持向可见终端发送输入；不支持时，技能会提供一条需要用户手动执行的连接命令。

## 配色

| 内容 | 颜色 |
| --- | --- |
| 背景 | `#000000` |
| 正文 | `#FFFFFF` |
| 普通目录、路径 | `#50B4FF` |
| 用户名、可执行文件、特殊权限目录 | `#00FF64` |
| 符号链接 | `#00E6FF` |
| 损坏链接 | `#FF5555` |

默认只应用于当前会话，不修改远端启动配置，也不保存凭据。

详细操作规范见 [SKILL.md](SKILL.md)，配色脚本见 [scripts/high-contrast.bash](scripts/high-contrast.bash)。
