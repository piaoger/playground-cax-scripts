
struct numder_param(id, name, type, maxval, minval, defaultval) 
struct string_param(id, name, type, values, defaultval) 


params = #( \
	param id: "id"  name:"name" type:"type" maxval: 5  minval: 4 defaultval: 12, \
	param id: "id"  name:"name" type:"type" maxval: 5  minval: 4 defaultval: 12  \
)

fn process params = (
    
)

- return json of 
fn param_to_json param = (
	str =       " { "
	str = str + "     \"id:\"" + param.id + ",\n"
	str = str + "     \"name:\"" + param.name + ",\n"
	str = str + "     \"type:\"" + param.type + ",\n"
	str = str + "     \"maxval:\"" + param.maxval + ",\n"
	str = str + "     \"minval:\"" + param.minval + ",\n"
	str = str + "     \"defaultval:\"" + param.defaultval + "\n"
	str = str + "}"
)




// javascript
// {
//	"id1": v1,
//	"id2": v2
// }
function defaultValues(str, paramvals) {
    var paramarray = JSON.parse(str);
    var params = {};
	paramarray.forEach(function(param) {
		params[param.id] = param.defaultval;
	})

	paramvals.forEach(function(param) {
		if(params[param.id]) {
			params[param.id] = param.id;
		} else {
		    console.log('unknow parameter');
		}
	});
}

function param_definitios(params) {

}

function prams_from_json(str, paramvals) {
 
	var params = defaultValues(str, paramvals);
	var keys = Object.keys();

	var mscode = [
		'fn evalute(str) = (',
		'    fn evalute = (',
		'    fn evalute = (',
		')',
	].join(',');
}