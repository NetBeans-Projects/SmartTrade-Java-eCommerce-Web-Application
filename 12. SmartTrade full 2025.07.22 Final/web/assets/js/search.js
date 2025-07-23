
async function loadData() {

    const popup = new Notification();

    const response = await fetch("LoadData");

    if (response.ok) {

        const json = await response.json();

        if (json.status) {

//            console.log(json);
            document.getElementById("all-item-count").innerHTML = json.allProductCount;
            
            loadOptions("brand", json.brandList, "name");
            loadOptions("condition", json.qualityList, "value");
            loadOptions("color", json.colorList, "value");
            loadOptions("storage", json.storageList, "value");

        } else {

            popup.error({
                message: "Something went wrong"
            });

//            window.location = "index.html";

        }

    } else {

        popup.error({
            message: "Something went wrong"
        });

//        window.location = "index.html";

    }

}



function loadOptions(prefix, dataList, property){
    
    let options = document.getElementById(prefix+"-options");
    let li = document.getElementById(prefix+"-li");
    options.innerHTML = "";
    
    dataList.forEach(item =>{
        
        let li_clone = li.cloneNode(true);
        
        if (prefix == "color"){
            
            li_clone.style.borderColor = "black";
            li_clone.querySelector("#"+prefix+"-a").style.backgroundColor = item[property];
            
        }else{
            
            li_clone.querySelector("#"+prefix+"-a").innerHTML = item[property];
            
        }
        
        options.appendChild(li_clone);
        
    });

    const all_li = document.querySelectorAll("#" + prefix + "-options li");
    
    all_li.forEach(list => {
        list.addEventListener("click", function () {
            all_li.forEach(y => {
                y.classList.remove("chosen");
            });
            this.classList.add("chosen");
        });
    });
    
}












