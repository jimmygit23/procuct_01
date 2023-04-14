            function convert(column){
            	var sValue = removeTag(column);//去掉列中的超链接或DIV 标签包裹,直接取值
            	switch(orderType) {
                    case "int":
                        return parseInt(sValue);
                    case "float":
                        return parseFloat(sValue);
                    case "double":
                     return parseFloat(sValue);
                    case "date":
                    	if(sValue==''){
                    		sValue ='01/01/1800';
                    	}
                    	// alert(sValue);
                      return   Date.parse(sValue);
                    default:
                        return sValue.toString();
                }
            }
            
            //排序主方法
            var thisTable;//该表
            var orderType;//获取排序方法
            var orderColumnNum;//上一次记录的排序字段
            var columnNum;
            var rowSumNum;
            function sortThis(object){
            	if(object.is("a")){
            		object = object.parent();
            	}
            	thisTable = object.parent('tr').parent().parent('table');
            	orderColumnNum = thisTable.attr('orderColumnNum'); //获取上一次记录的排序字段
            	columnNum =selectColumnNum(object);//查询出该列是第几列
            	orderType=getColumnHead(columnNum).attr('orderType'); //查询出该列的列头
            	rowSumNum = selectRowSumNum();//查询出总行数
            	
            	// alert(rowSumNum);
            	
            	var descOrder = false;
            	if(orderColumnNum == columnNum){
   					descOrder = true;
   					thisTable.removeAttr('orderColumnNum');
   				}else{
   					thisTable.attr('orderColumnNum',columnNum);
   				}
            	//循环取出当前行的此列,和下一列的值
            	for(var i=rowSumNum;i>0;i--){
            	   // alert('i'+i);
            		for(var j = 2;j<=i;j++){ //j为行数
            			var currentRow = getRow(j);
            			// alert('j'+j);
            			var nextRow=getRow(j+1);
            			
            			var currentColumn = getColumn(currentRow,columnNum);
            			var nextCouumn = getColumn(nextRow,columnNum);
            				currentColumnValue = convert(currentColumn);
            				nextCouumnValue=convert(nextCouumn);
            				if(descOrder){
            					if(currentColumnValue < nextCouumnValue){
            						currentRow.before(nextRow);
            					}
            				}else{
	            				if(currentColumnValue > nextCouumnValue){
	            					currentRow.before(nextRow);
	            				}
            				}
            		}
            	}
            }
            
            //移除该列值的标签
            function removeTag(column){
            	if(column.children().html()!=null && column.children().html()!=undefined){
            		if(column.children().children().html()!=null && column.children().children().html()!=undefined){
            			column = column.children();
            			column = removeTag(column);
            		}else{
            			return column.children().html();
            		}
            	}
            	return column.html();
            }
            
            function getRow(rowNum){
            	var currentRow = thisTable.children().children().eq(rowNum-1);
            	return currentRow;
            }
            
            function getColumn(row,columnNum){//根据所在行,及要获得列数 获得列对象
            	var currentColumn = row.children().eq(columnNum-1);
            	return currentColumn;
            }
            
            //根据列数,获得列头
            function getColumnHead(columnNum){
            	var head = thisTable.children().children().children().eq(columnNum-1);
            	return head;
            }
            
            
            //查询出该列是第几列
           function selectColumnNum(column){
           		var num = thisTable.children().children().children().index(column) +1;
           		return num;
            }
            
            //查询出总行数,表头不算
            function selectRowSumNum(){
            	var rowSumNum = thisTable.children().children().size() -1;
            	return rowSumNum;
            }
            
            
            
