# Aira2-Notification-Helper

## Descriptions

A script to make a notification when aria2 download complete.

## How to Use

Download the full zip and extract them to a folder. Edit `Aria2DownloadPath = "YOUR PATH"` in `aria2notification.vbs`,  replace `YOUR PATH` with your aria2 download path and save it. For example: `Aria2DownloadPath = "C:\User\AAA\Downloads\"` 

Then run `aria2notification.vbs`, the script will run in background. When download complete, a notification will be sent.

## How to Stop

To stop the script, just create a file named "stop" in the same folder with the script. Don't forget to delete it before you run the script again.

## 描述

一个用来在aria2下载完成时发送通知的脚本。

## 如何使用

下载完整的zip并解压到一个文件夹内。用记事本或其他文本编辑器打开 `aria2notification.vbs` 。将 `Aria2DownloadPath = "YOUR PATH"` 中的 `YOUR PATH` 替换为你aria2的下载目录保存即可。比如 `Aria2DownloadPath = "C:\User\AAA\Downloads\"` 

修改完成后直接运行脚本即可，当aria2下载完成时脚本会发送一条系统通知。

## 如何停止脚本

脚本默认一直在后台运行，要停止脚本，只需要在脚本所在的文件夹中创建一个名为 "stop" 的文件，脚本便会自动退出。下次运行前删除该文件即可。
