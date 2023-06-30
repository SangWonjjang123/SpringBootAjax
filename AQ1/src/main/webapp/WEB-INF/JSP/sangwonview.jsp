<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습용</title>
<style>
/* CSS 스타일 적용 */
.table {
  width: 100%;
  border-collapse: collapse;
}

.table th, .table td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.table th {
  background-color: #f2f2f2;
}

.table tbody tr:nth-child(even) {
  background-color: #f9f9f9;
}

.table tbody tr:hover {
  background-color: #f5f5f5;
}

.table tbody th:first-child, .table tbody td:first-child {
  font-weight: bold;
}

.table tbody td:nth-child(4) {
  color: green;
}

.table tbody td:last-child {
  font-style: italic;
}
</style>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>제목</th>
				<th>설명</th>
				<th>작성일</th>
				<th>답변여부</th>
				<th>ID</th>
				<th>비밀</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>제목1</td>
				<td>설명1</td>
				<td>작성일1</td>
				<td>답변여부1</td>
				<td>ID1</td>
				<td>비밀1</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
