# Magento 自动化安装与部署

本项目是用Ansible编写的Magento自动安装程序，实现在服务器上一步安装Magento，无需了解复杂的配置过程。本项目是开源项目，通过源码，您可以查看Magento自动安装的每一个步骤。

如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上使用我们提供的Magento镜像。


## 技术要求

### 服务器配置要求

Magento技术要求：https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html
Magento是企业级系统，安装非常讲究

~~~
Upgrading the Magento applications and extensions you obtain from Magento Marketplaces and other sources can require up to 2GB of RAM. If you are using a system with less than 2GB of RAM, we recommend you create a swap file; otherwise, your upgrade might fail.
Composer is required for developers who wish to contribute to the Magento 2 codebase or anyone who wishes to develop Magento extensions.
In addition, you must enable the Apache mod_rewrite and mod_version modules. The mod_rewrite module enables the server to perform URL rewriting. The mod_version module provides flexible version checking for different httpd versions. For more information, see our Apache documentation.
MySQL 5.6, 5.7

~~~


### 操作系统要求

* CentOS
* Ubuntu（暂时不支持）

### 环境要求

本程序仅适用于Websoft9的PHP相关基础环境，包括：

* LAMP
* LNMP（暂时不支持）

其中最低php7.0,mysql5.5，官方建议采用php7.2,mysql5.6。

## 版本

本自动化安装程序是通过 Composer 安装，能够保证每次均可为最新版本


## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

## 使用指南

文档链接：http://support.websoft9.com/docs/magento