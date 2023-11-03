///无重复字符串
///
//给定一个字符串 s ，请你找出其中不含有重复字符的 最长子串的长度。
//
// 示例 1:
//
// 输入: s = "abcabcbb"
// 输出: 3
// 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
// 示例 2:
//
// 输入: s = "bbbbb"
// 输出: 1
// 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
//解题流程：
//
// 写出大致思路
// 写出step by step的实现思路
// 定义需要维护的变量
// 定义窗口的首尾端及其它变量
// 建立窗口(对于窗口大小固定的题目 滑动之前就建立)
// 开始滑动
// 窗口大小固定 先去掉最左端 right - winSize 再加入新右端
// 窗口大小不定 left不断左移 直到窗口满足要求为止
// 滑动过程不断更新需要维护的变量
// 大致代码实现
// 剪枝 优化
// 建立滑动窗口之前 是否无需建立滑动窗口 就能够直接返回结果
// 滑动过程中 是否可以提前结束滑动
// 对于窗口大小不定的情况 是否能够快速定位到new left的位置 无需left一步步右移
// 返回结果
// 这里的框架是一个大致框架，针对窗口大小固定/不定两种类型的题目，分别会给出更细致的解题框架


//窗口大小固定类型的题目
// 解题框架
//
// 定义需要维护的变量
// 定义窗口的首尾端及其它变量
// 剪枝优化1 判断是否无需进行窗口滑动可以直接返回结果
// 创建窗口
// 根据窗口的当前的情况更新需要维护的变量
// 窗口开始滑动 每次滑动1位 为了保证窗口大小固定 每次先将最左边的元素去掉 再将新的最右边的值加入窗口
// 更新需要维护的变量【剪枝优化2 判断是否可以提前结束窗口滑动】
// 窗口滑动结束 返回结果


//窗口大小不定类型的题目
// 解题框架
//
// 定义需要维护的变量
// 定义窗口首尾端及其它变量
// 剪枝位置1 考虑是否存在可以直接返回结果的情况
// 窗口开始滑动
// 考虑把index=right位置的元素纳入窗口后 窗口是否仍然满足要求
// 不是 left不断右移 直到把index=right位置的元素纳入窗口后 窗口仍满足要求；left右移的过程中更新需要维护的变量【剪枝位置2 考虑是否能快速定位到新left的位置 不需要left一步一步右移】
// 是 则继续往下
// 把index=right位置的元素纳入窗口
// 更新需要维护的变量
// 剪枝位置3 考虑是否可以提前结束窗口滑动
// 窗口滑动结束 返回结果