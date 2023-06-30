<script>
// CSS 스타일 정의
var cssStyles = `
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

.table tbody th:first-child,
.table tbody td:first-child {
  font-weight: bold;
}

.table tbody td:nth-child(4) {
  color: green;
}

.table tbody td:last-child {
  font-style: italic;
}
`;

// 스타일 요소 생성
var styleElement = document.createElement('style');
styleElement.innerHTML = cssStyles;

// 테이블 요소에 스타일 적용
var tableElement = document.querySelector('.table');
tableElement.setAttribute('style', 'border-collapse: collapse;'); // 추가 스타일

// 스타일 요소를 헤더의 head 태그에 추가
document.head.appendChild(styleElement);
</script>
