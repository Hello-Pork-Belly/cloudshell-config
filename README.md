# Cloud Shell Config 管理仓库

本仓库用于统一管理多个 Oracle Cloud 账户下的 Cloud Shell 配置，包括：

- 区域专属配置（如 phoenix、singapore-west、melbourne）
- 巡检和维护工具（如 tools/check-cloudshell-status.sh）

所有文件均为模板或无敏感信息版本，目的是为了灾备、快速恢复和自动化运维准备。

## 仓库结构说明

| 目录 | 说明 |
|:---|:---|
| phoenix/ | 管理 US Phoenix 区域账户的 Cloud Shell 配置 |
| singapore-west/ | 管理 Singapore West 区域账户的 Cloud Shell 配置 |
| melbourne/ | 管理 Melbourne 区域账户的 Cloud Shell 配置 |
| tools/ | 存放统一的巡检脚本、后续实用小工具 |

## 注意事项

- 禁止提交任何真实密钥、IP地址、私钥、Token 等敏感数据。
- 所有脚本均为模板版本，请根据实际环境使用前适当调整。
- 建议定期执行 `tools/check-cloudshell-status.sh` 脚本进行巡检。

---

## 巡检建议流程

```bash
bash ~/cloudshell-config/tools/check-cloudshell-status.sh
