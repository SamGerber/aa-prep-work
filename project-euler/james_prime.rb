def isPrime(x)
  j = m = 3
  while (Math.sqrt(m) < x)
    j = x % m
    break if (j == 0)
    m += 2
  end
  return (m == x)
end

isPrime 16
