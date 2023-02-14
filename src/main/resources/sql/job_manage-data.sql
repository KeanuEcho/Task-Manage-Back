/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : job_manage

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 14/02/2023 19:25:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of job_batch
-- ----------------------------

-- ----------------------------
-- Records of job_course
-- ----------------------------

-- ----------------------------
-- Records of job_menu
-- ----------------------------
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (1, 0, '作业管理', 0, 'jobManage', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:52:16', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (2, 1, '课程管理', 1, 'courseManage', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:53:04', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (3, 1, '批次管理', 1, 'batchManage', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:53:19', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (4, 0, '提交详情', 0, 'submissionDetails', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:54:02', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (5, 0, '人员管理', 0, 'personnelManage', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:54:21', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (6, 0, '个人中心', 0, 'personal', NULL, NULL, NULL, NULL, 0, '2023-02-07 12:54:52', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (7, 2, '添加', 2, NULL, NULL, 'job:course:insert', NULL, NULL, 0, '2023-02-07 16:52:23', '2023-02-07 16:52:23', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (8, 2, '删除', 2, NULL, NULL, 'job:course:delete', NULL, NULL, 0, '2023-02-07 19:27:39', '2023-02-07 19:29:28', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (9, 2, '修改', 2, NULL, NULL, 'job:course:update', NULL, NULL, 0, '2023-02-07 19:29:58', '2023-02-07 19:29:58', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (10, 2, '查看', 2, NULL, NULL, 'job:course:select', NULL, NULL, 0, '2023-02-07 19:30:38', '2023-02-07 19:30:38', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (11, 3, '添加', 2, NULL, NULL, 'job:batch:insert', NULL, NULL, 0, '2023-02-07 20:14:37', '2023-02-07 20:14:37', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (12, 3, '删除', 2, NULL, NULL, 'job:batch:delete', NULL, NULL, 0, '2023-02-07 20:14:37', '2023-02-07 20:14:37', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (13, 3, '修改', 2, NULL, NULL, 'job:batch:update', NULL, NULL, 0, '2023-02-07 20:14:37', '2023-02-07 20:14:37', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (14, 3, '查看', 2, NULL, NULL, 'job:batch:select', NULL, NULL, 0, '2023-02-07 20:14:37', '2023-02-07 20:14:37', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (18, 4, '查看', 2, NULL, NULL, 'job:taskDetail:select', NULL, NULL, 0, '2023-02-07 20:16:45', '2023-02-12 20:06:37', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (19, 5, '添加', 2, NULL, NULL, 'job:user:insert', NULL, NULL, 0, '2023-02-07 20:17:36', '2023-02-07 20:17:36', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (20, 5, '删除', 2, NULL, NULL, 'job:user:delete', NULL, NULL, 0, '2023-02-07 20:17:36', '2023-02-07 20:17:36', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (21, 5, '修改', 2, NULL, NULL, 'job:user:update', NULL, NULL, 0, '2023-02-07 20:17:36', '2023-02-07 20:17:36', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (22, 5, '查看', 2, NULL, NULL, 'job:user:select', NULL, NULL, 0, '2023-02-07 20:17:36', '2023-02-07 20:17:36', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (25, 6, '修改', 2, NULL, NULL, 'job:personal:update', NULL, NULL, 0, '2023-02-07 20:18:35', '2023-02-07 20:18:35', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (26, 6, '查看', 2, NULL, NULL, 'job:personal:select', NULL, NULL, 0, '2023-02-07 20:18:35', '2023-02-07 20:18:35', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (27, 1, '添加', 2, NULL, NULL, 'job:task:insert', NULL, NULL, 1, '2023-02-09 16:33:42', '2023-02-10 18:16:45', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (28, 1, '删除', 2, NULL, NULL, 'job:task:delete', NULL, NULL, 1, '2023-02-09 16:33:42', '2023-02-10 18:16:45', 0);
INSERT INTO `job_menu` (`id`, `parent_id`, `name`, `type`, `path`, `component`, `perms`, `icon`, `sort_value`, `status`, `create_time`, `update_time`, `is_deleted`) VALUES (30, 1, '查看', 2, NULL, NULL, 'job:task:select', NULL, NULL, 1, '2023-02-09 16:33:42', '2023-02-10 18:16:45', 0);

-- ----------------------------
-- Records of job_role
-- ----------------------------
INSERT INTO `job_role` (`id`, `role_name`, `role_code`, `description`, `create_time`, `update_time`, `is_deleted`) VALUES (1, '系统管理员', 'system', NULL, '2023-02-07 12:46:09', '2023-02-07 12:46:09', 0);
INSERT INTO `job_role` (`id`, `role_name`, `role_code`, `description`, `create_time`, `update_time`, `is_deleted`) VALUES (2, '普通管理员', 'normal', NULL, '2023-02-07 16:18:28', '2023-02-07 16:18:38', 0);
INSERT INTO `job_role` (`id`, `role_name`, `role_code`, `description`, `create_time`, `update_time`, `is_deleted`) VALUES (3, '普通用户', 'user', NULL, '2023-02-07 16:17:45', '2023-02-07 16:18:38', 0);

-- ----------------------------
-- Records of job_role_menu
-- ----------------------------
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (2, 1, 7, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (3, 1, 8, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (4, 1, 9, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (5, 1, 10, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (6, 1, 11, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (7, 1, 12, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (8, 1, 13, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (9, 1, 14, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (13, 1, 18, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (14, 1, 19, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (15, 1, 20, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (16, 1, 21, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (17, 1, 22, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (20, 1, 25, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (21, 1, 26, '2023-02-14 14:11:27', '2023-02-14 14:11:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (26, 2, 7, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (27, 2, 8, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (28, 2, 9, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (29, 2, 10, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (30, 2, 11, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (31, 2, 12, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (32, 2, 13, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (33, 2, 14, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (37, 2, 18, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (38, 2, 22, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (39, 2, 25, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (40, 2, 26, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (41, 2, 27, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (42, 2, 28, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (44, 2, 30, '2023-02-14 14:19:57', '2023-02-14 14:19:57', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (45, 1, 30, '2023-02-14 14:26:11', '2023-02-14 14:26:11', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (46, 2, 22, '2023-02-14 14:26:36', '2023-02-14 14:26:36', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (47, 3, 25, '2023-02-14 14:29:27', '2023-02-14 14:29:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (48, 3, 26, '2023-02-14 14:29:27', '2023-02-14 14:29:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (49, 3, 27, '2023-02-14 14:29:27', '2023-02-14 14:29:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (50, 3, 28, '2023-02-14 14:29:27', '2023-02-14 14:29:27', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (51, 3, 10, '2023-02-14 14:30:04', '2023-02-14 14:30:04', 0);
INSERT INTO `job_role_menu` (`id`, `role_id`, `menu_id`, `create_time`, `update_time`, `is_deleted`) VALUES (52, 3, 14, '2023-02-14 14:30:04', '2023-02-14 14:30:04', 0);

-- ----------------------------
-- Records of job_task
-- ----------------------------

-- ----------------------------
-- Records of job_user
-- ----------------------------
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1, 'admin', '$2a$10$oOZzFIIXpR0wxKJyWkQ.u.E7M4H/r3FoRWaQRurVeUi8eUeMdi1qW', '系统管理员', '888888888888', '1975037337@qq.com', 'http://image.imageurl.cf/JobManage/avatar/%E5%A4%B4%E5%83%8F.jpeg', 0, '2023-02-07 11:43:29', '2023-02-14 17:21:01', 0, 1);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393269309415425, '2021D2280301', '$2a$10$ay6DMUz17nG2FTBi6C8nDeg3gOuOWsHsurEtz0iFccfuzP8Bn/WNO', '包庭亭', '2021D2280301', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393270907445250, '2021D2280302', '$2a$10$3uI/nEjjVqlJ/kTTWYlQQerfiPo3/kU1hfG01IXC/Za3jMIAreiX6', '陈丽', '2021D2280302', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393271238795266, '2021D2280303', '$2a$10$cybSUytYr1snZduOT1KCfufm9l2mm4MQGb8deGzq0d6XMVIrvZqO.', '翟云迪', '2021D2280303', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393271507230722, '2021D2280304', '$2a$10$.kfP6bUa2NZJJ.knxlSvjeKBkWD.XgY4pzn/px7uQfrkp1a84YadG', '胡青清', '2021D2280304', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393271771471873, '2021D2280305', '$2a$10$pWT.jmDwxfUfealiaB2g2utAMXs/tMF81xWhDpNCq1NvPMA2q7.Za', '李函芮', '2021D2280305', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393272039907330, '2021D2280306', '$2a$10$ecQNfqlJu0qTnthxLl4UjuzX0ufe2OW/bA9GkiuxieT3tl6ymryD.', '李佳徽', '2021D2280306', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393272241233921, '2021D2280307', '$2a$10$hSIbBDJRjce/utbnw6t6COJPZ6qXxJsPEWI9wxQQMjif1YFR0CU3.', '李美静', '2021D2280307', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393272509669377, '2021D2280308', '$2a$10$FBbcfJ1Q7tBktx87./TK7.xlMrYboYBgPE/fzoplgkUqLd7o0UKCy', '刘桂利', '2021D2280308', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393272773910529, '2021D2280309', '$2a$10$aPzavf7SKCFcLmpBHcBNXeq.C8xh/G0WS9BgvZY5uIuz.73eo9bl.', '刘天华', '2021D2280309', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393273038151681, '2021D2280310', '$2a$10$XUj/J6.g5e1.PyBSEt/if.PuLggirfe4cMxHsH7YsfIBzxOa6CKem', '刘欣雨', '2021D2280310', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393273306587138, '2021D2280311', '$2a$10$8Ug1Sj6U2ROGIJezvPPZDOy6rXtOUnyLCBOFVH7PxmseBG9N5SLq6', '刘樱岚', '2021D2280311', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393273633742849, '2021D2280312', '$2a$10$MoQlJvODrVKuQu4sUumt3eVF39RdibMO7aqCLnC3JPeJt4fTQ2sxK', '吕梦蝶', '2021D2280312', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393273897984002, '2021D2280313', '$2a$10$KbKfvrazTns7nPe4/Wk2de.ooTKkiUYYy5g0XbHL3mGud3AkpJOia', '彭德燕', '2021D2280313', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393274166419457, '2021D2280314', '$2a$10$zp/dKh4VY0wRphaR9H9i4u7KSEkR0wbtdon0XyXL2ffrcKtbSYfV2', '史荣佳', '2021D2280314', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:50', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393274439049217, '2021D2280316', '$2a$10$eNbvBSPbgLx.SSoU8n3jbO097p.0VzVTZ6y1f7GgoDyQD1jzR2KU.', '杨娇', '2021D2280316', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393274703290369, '2021D2280317', '$2a$10$T5Qf9nRcIcmKAv8DvGyXVOtooje4MW9hpW/w2Z.eoLMJwdpugp4KG', '杨文香', '2021D2280317', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393274984308738, '2021D2280318', '$2a$10$6wVrPNbjzvznBRGfAr5Z9ef15i76eFWIw1xpD/MxNhXMqyYW9XuOG', '杨雪', '2021D2280318', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393275235966978, '2021D2280319', '$2a$10$lxdWg02MHUg.wmomIS5oYeDiqYB/30A8BkOmEYRtNDAJwcWUlEOTW', '张诚', '2021D2280319', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393275504402433, '2021D2280320', '$2a$10$.3eS6JMfmqeDetQAmoj/o.TB4Daa.t3XTs7NjutxeNdTahEdmpcXK', '郑盈', '2021D2280320', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393275772837890, '2021D2280321', '$2a$10$ErGs6MFalGbuAFc0Ska9n.tuE.aN/EZ9NgqlK8/M29PHMAa756fra', '程飞', '2021D2280321', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393275974164482, '2021D2280322', '$2a$10$0aMJdOiZO4guhzu4a8LV2.FVxC4cCkrFcsO/yroak8YubZeTKi/Oa', '邓超', '2021D2280322', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393276263571458, '2021D2280323', '$2a$10$aHIDswAJ4n6RvIZUMkz9JuH.PQTfYlyfAGv23BtQHlQy3rvFnK98e', '何钦', '2021D2280323', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393276498452482, '2021D2280324', '$2a$10$8Iu5wJpGoiovGcnajciaDuX70Rfm16cEx/3CEcwHMtmNH.TTGxbFu', '侯华荣', '2021D2280324', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393276766887938, '2021D2280325', '$2a$10$eZGwhOz2A3Ht6OxhzNnSdO5ltopAgQ/uJKtQkjlUChM0p.XsJm.Nu', '李进', '2021D2280325', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393277035323394, '2021D2280326', '$2a$10$6kmtUMelXM7gpdcD1GkQ.O5Lf46ej4BXdE3ezkEJ9mDQ2fAtaL56y', '李卓玟', '2021D2280326', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393277299564545, '2021D2280327', '$2a$10$ChOoNsv.CEbUKLisJRcI5OX7MCs05byja5Paz8k6JDZyWgcbO2Noy', '刘金', '2021D2280327', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393277559611393, '2021D2280328', '$2a$10$yAMh7h3YNxXrkMbksgg6Q.vfuq47HD6EBdVQ53twbmuYNMV/a73Pq', '刘天南', '2021D2280328', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393277828046850, '2021D2280329', '$2a$10$OBg4uyCala07C4K42VLCheyI9FJkdEFwv3fklnnFD7zfkaGwvRvg6', '刘勇志', '2021D2280329', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393278092288001, '2021D2280330', '$2a$10$h7HWQxX/wCAOHoY6fA2uburip/WjmS81RGH0hBg2MDmewMAyIfwPy', '吕勇杰', '2021D2280330', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393278360723457, '2021D2280331', '$2a$10$5Nifwfkgd8DCZ3hVhi/Eo.ljo9J2TLiDnHuPDWIU.qAgwzTkZqG8u', '苏蓝天', '2021D2280331', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:51', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393278557855746, '2021D2280332', '$2a$10$6AhZiqFfnUg8FhxbquK/1uZ4BjTWG.CqhwG5dysEUD8kdLANio34K', '唐茂森', '2021D2280332', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393278822096898, '2021D2280333', '$2a$10$3mfzT1AY01gbe0nPBD3bFuwS.YK7Ueuaoj/qDyVGyl.qk9vl4sFW2', '汪在兴', '2021D2280333', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393279086338050, '2021D2280334', '$2a$10$4YJgdE/vgP2demoSMwrvV.w09M.ixhNuJC5zybEFFrGCAmkHGN0Gu', '王琨骑', '2021D2280334', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393279354773505, '2021D2280335', '$2a$10$4warB8ve403e7dkdnyPVYuN8XQqEeyhAsxaptWE9viMnGPmqQF2DC', '王圣奇', '2021D2280335', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393279623208961, '2021D2280336', '$2a$10$7QU0yk.yDAcyYDCcZHpcf.cdwqujo7MZabtOSbw6IEh4dcACK3jp2', '王兴', '2021D2280336', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393279887450113, '2021D2280337', '$2a$10$bArEvCv5vMAB1xEEYUhp0.BpkaAHMEbMkUpoJNpcb3oL/Av92RWLC', '吴坤奎', '2021D2280337', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393280155885570, '2021D2280338', '$2a$10$nPy/wxBEOoZEQKhdCov1D.wIK2Qv1H1nOlphbkOl6sYIY8xU3xEG2', '吴鹏', '2021D2280338', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393280420126722, '2021D2280339', '$2a$10$m2n8gBiIOw17Hwq.u8GQpefh76aCdqcHYiM64EhsE5Ol87/CJxMg2', '杨方瀚', '2021D2280339', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393280688562177, '2021D2280340', '$2a$10$tM2nYmQ8l6BQ4EbIQHWT1exNull8FP7UgfEirQWvLI96Gapj9UgCi', '杨建锋', '2021D2280340', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393280956997634, '2021D2280341', '$2a$10$CuaNtauhgi.4XzdqCuuT6uAH04GCg7QOBZyTh95WlIQovl.F2WOJ.', '杨满山', '2021D2280341', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393281225433090, '2021D2280342', '$2a$10$x.ho/8YU/.O4yI8otWWrGeUmS1XYelUCWD07BxSOjyMB86qFGLiwi', '杨耀林', '2021D2280342', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393281426759682, '2021D2280343', '$2a$10$eK0pXu8HDbya7IoI07GtnuwGlw2WfUtn8aSx0G3N.p5wqr2XzyaT6', '杨云华', '2021D2280343', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393281716166658, '2021D2280344', '$2a$10$TIs1nQzGVVXjcXRm40SMKu4HFmY9CAOmCUSLcwGDtSzsY9mdbaeT2', '叶鸿嘉', '2021D2280344', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393281963630593, '2021D2280345', '$2a$10$.2ZU9qYBVoyNgjoZ7jsyRughSjTo83MgpIfB8a6/fbcp.XQu0GtVO', '叶泽民', '2021D2280345', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393282232066049, '2021D2280346', '$2a$10$BXg4nVszoIksruAvTCRJAuqUrHppmQGEP9/ki1Y9V4K.J4wIZugPS', '易鸿东', '2021D2280346', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393282496307202, '2021D2280347', '$2a$10$DusXqTiq5ZXnnxCRQogdeexa/VGmk/4LHHpREotbDhavZlp16fRK2', '张光杰', '2021D2280347', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:52', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393282764742658, '2021D2280348', '$2a$10$E5uKRTld9GooRWZ0VEo04O1XhjlTGXIM67IIA67loDHy/dCjliiuO', '张俊杰', '2021D2280348', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-14 13:53:16', 0, 2);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393283033178114, '2021D2280349', '$2a$10$RPBkxBL6UdyQR7wgOwf9zeFmZPx670DFXtA69nN3z/jPd1PkxtkL6', '张锐', '2021D2280349', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393283297419266, '2021D2280350', '$2a$10$Ek9ANmFWcuvqNxhB9oUdpeOPAqpHvcT2i4oXNGtCprcM0DpSbPIwS', '赵航', '2021D2280350', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393283498745857, '2021D2280351', '$2a$10$cSD8t8/NmAPve8vSdwTh9.guav6rpJEUNIB4wsRu.oleSrqBJOHam', '郑陈浩', '2021D2280351', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393283767181313, '2021D2280352', '$2a$10$ECILcZ.yCLSmaDTFGeBn2erz3vTLqrFrBg0hJZvDeaRsjrj2hfrDO', '周小岚', '2021D2280352', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393284035616769, '2021D2280353', '$2a$10$UdWgxhM7I0Tz1mgt.qNr2uGaL6TYwVyFNnvbt/EWiUX6YGIkVqIZu', '朱钊', '2021D2280353', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);
INSERT INTO `job_user` (`id`, `username`, `password`, `name`, `student_number`, `email`, `avatar`, `status`, `create_time`, `update_time`, `is_deleted`, `role_id`) VALUES (1624393284304052226, '2021D2280354', '$2a$10$lMxW7d9U4vWtIy6l9opnHeDu1LU/7mYJdsxzmPgAl7GMIT3WH2CTW', '杨镇宇', '2021D2280354', NULL, 'https://img.zcool.cn/community/01ed7955430a6e0000019ae9e3bdf3.gif', 0, '2023-02-11 21:01:53', '2023-02-11 21:13:28', 0, 3);

SET FOREIGN_KEY_CHECKS = 1;
