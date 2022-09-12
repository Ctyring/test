# （3）写一个命令行程序，
# 要求：输出1~20000内的所有素数，按每行5个打印出来，并分析程序中最费时的函数是什么， 如何改进？

# 基础版本
import time


def is_prime(n):
    if n == 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True


def main():
    start = time.time()
    for i in range(1, 20000):
        if is_prime(i):
            print(i, end=' ')
    end = time.time()
    print('Time: %.2f' % (end - start))

# 欧拉筛版本


def main2():
    start = time.time()
    is_prime = [True] * 20000
    for i in range(2, 20000):
        if is_prime[i]:
            print(i, end=' ')
            for j in range(i * i, 20000, i):
                is_prime[j] = False
    end = time.time()
    print('Time: %.2f' % (end - start))


if __name__ == '__main__':
    main()  # 0.98
    main2()  # 0.13
