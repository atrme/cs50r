distance <- function(p1, p2) {
  # 检查是否有NA值
  if (anyNA(p1) || anyNA(p2)) {
    return(NA)
  }
  
  # 检查是否包含非数值变量
  if (!is.numeric(p1) || !is.numeric(p2)) {
    warning("One or both vectors contain non-numeric values. Returning NA.")
    return(NA)
  }
  
  # 检查两点维度是否相同
  if (length(p1) != length(p2)) {
    stop("The dimensions of p1 and p2 must be the same.")
  }
  
  # 计算距离
  dist <- sqrt(sum((p1 - p2)^2))
  return(dist)
}