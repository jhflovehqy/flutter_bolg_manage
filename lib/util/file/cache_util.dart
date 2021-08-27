

import 'dart:io';
import 'package:blog/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

/// @class : CacheUtil
/// @date : 2021/08/25
/// @name : jhf
/// @description :缓存工具类
class CacheUtil{



  ///加载缓存
  static Future<double> loadCache() async {
    try {
      Directory tempDir = await getTemporaryDirectory();
      double value = await _getTotalSizeOfFilesInDir(tempDir);
      return value;
    } catch (err) {
      debugPrint(err.toString());
      return 0;
    }
  }



  /// 递归方式 计算文件的大小
  /// [file] 文件系统实体类
  static Future<double> _getTotalSizeOfFilesInDir(final FileSystemEntity file) async {
    try {
      if (file is File) {
        int length = await file.length();
        return double.parse(length.toString());
      }
      if (file is Directory) {
        final List<FileSystemEntity> children = file.listSync();
        double total = 0;
        for (final FileSystemEntity child in children) {
          total += await _getTotalSizeOfFilesInDir(child);
        }
        return total;
      }
      return 0;
    } catch (e) {
      debugPrint(e.toString());
      return 0;
    }
  }


  ///清除缓存
  static Future<bool> clearCache() async {
    try {
      Directory tempDir = await getTemporaryDirectory();
      await delDir(tempDir);
      await loadCache();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }


  ///递归方式删除目录
  ///[file]文件目录
  static Future<Null> delDir(FileSystemEntity file) async {
    try {
      if (file is Directory) {
        final List<FileSystemEntity> children = file.listSync();
        for (final FileSystemEntity child in children) {
          await delDir(child);
        }
      }
      await file.delete();
    } catch (e) {
      debugPrint(e.toString());
    }
  }


  ///byte 转换为实际大小，并保留小数位
  ///[byteSize] 大小
  ///[precision] 小数
  static String byte2FitMemorySize(final double byteSize, {int precision = 2}) {
    if (byteSize < 0) {
      return '0B';
    } else if (byteSize < 1024) {
      return '${byteSize}B';
    } else if (byteSize < 1048576) {
      var size = (byteSize / 1024).toStringAsFixed(precision);
      return '${size}KB';
    } else if (byteSize < 1073741824) {
      var size = (byteSize / 1048576).toStringAsFixed(precision);
      return '${size}MB';
    } else {
      var size = (byteSize / 1073741824).toStringAsFixed(precision);
      return '${size}GB';
    }
  }


}