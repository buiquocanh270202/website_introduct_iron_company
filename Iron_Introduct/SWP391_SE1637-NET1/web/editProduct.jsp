<%-- 
    Document   : manageAccount
    Created on : Oct 8, 2022, 4:48:20 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/mytaglib.tld"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="components/adminHeadComponent.jsp" %>
        <title>Manage Product</title>
        <style>
            .container {
                display: flex;
                flex-wrap: wrap;
            }
            .image-wrapper {
                position: relative;
                margin-right: 10px;
                margin-bottom: 10px;
                width: 150px;
                height: 150px;
                overflow: hidden;
                /*                border: 1px solid #ccc;*/
            }

            .image {
                display: block;
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
            }

            .delete-btn {
                position: absolute;
                top: 5px;
                right: 5px;
                width: 20px;
                height: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: rgba(0, 0, 0, 0.5);
                color: #fff;
                font-size: 14px;
                border: none;
                cursor: pointer;
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            .image-wrapper:hover .delete-btn {
                opacity: 1;
            }

        </style>
    </head>
    <body class="sb-nav-fixed">
        <!-- Admin navbar -->
        <%@include file="components/adminNavBarComponent.jsp" %>
        <div id="layoutSidenav">
            <!-- Admin Slidenav -->
            <%@include file="components/adminSlideNavComponent.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">

                        <!-- Button trigger modal -->

                        <!-- Modal -->

                        <div class="modal-content">
                            <div class="modal-header" style="width: 100%">
                                <h5 class="modal-title" id="exampleModalLabel">Update Product Information</h5>
                                <a  href="AdminProductController" class="btn-close"></a>
                            </div>
                            <form action="EditProductController" method="post"  enctype="multipart/form-data">
                                <div class="modal-body">
                                    <input type="hidden" name="pId" value="${detailproduct.pId}"/>

                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example"> Image  <span style="color: red; font-weight: bold">*</span></label>

                                        <input type="file" name="file" id="myFile" accept=".jpeg,.png,.jpg" onchange="checkFile(this)">

                                        <input type="text" id="imgPath" class="form-control form-control-lg"
                                               name="imgPath" hidden="" value="${detailproduct.imgPath}"/>
                                        <img id="preview" width="300px" height="190px" src="${detailproduct.imgPath}">  

                                        <script>

                                            function checkFile(input) {
                                                if (input.files && input.files[0]) {
                                                    var file = input.files[0];
                                                    var fileType = file.name.substring(file.name.lastIndexOf(".") + 1).toLowerCase();
                                                    if (file.size > 20000000) {
                                                        alert("File size must be less than 20MB");
                                                        input.value = "";
                                                    } else if (fileType !== "jpeg" && fileType !== "png" && fileType !== "jpg") {
                                                        alert("File type must be .jpeg, .png, or .jpg");
                                                        input.value = "";
                                                    }
                                                }
                                            }
                                        </script>

                                    </div>

                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example">Product Name <span style="color: red; font-weight: bold">*</span></label>


                                        <input type="text" id="pName" class="form-control form-control-lg"
                                               required name="pName" value="${detailproduct.pName}"/>

                                        <input type="text" hidden="" id="url" class="form-control form-control-lg" name="url" value="${detailproduct.url}"/>

                                        <!-- Mã JavaScript để copy nội dung và convert chuỗi -->
                                        <script>
                                            const pName = document.getElementById("pName");
                                            const url = document.getElementById("url");

                                            pName.addEventListener("input", function () {
                                                const inputText = pName.value;
                                                const convertedText = inputText.normalize("NFD")
                                                        .replace(/[\u0300-\u036f]/g, "")
                                                        .toLowerCase()
                                                        .replace(/\s+/g, "-")
                                                        .replace(/đ/g, "d");
                                                url.value = inputText;
                                                url.value = convertedText;
                                            });
                                        </script>
                                    </div>


                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example"> Image thư viện <span style="color: red; font-weight: bold">*</span></label>

                                        <!--                                        <input type="file" name="files" id="myFile2" multiple="" >-->

                                        <input type="file" name="files" id="myFile2" multiple="" accept=".jpeg,.png,.jpg" onchange="checkFile(this)">
                                        <div class="container" id="image-container"></div>
                                        <c:forEach items="${requestScope.detailImg}" var="DI">  
                                            <c:if test="${DI.pId eq detailproduct.pId}">
                                                <img id="previewmulti" width="150px" height="100px" src="${DI.imgPath}">  
                                            </c:if>
                                        </c:forEach>    

                                        <script>
                                            const inputElement = document.getElementById("myFile2");
                                            const containerElement = document.getElementById("image-container");


                                            inputElement.addEventListener("change", handleFiles, false);

                                            function handleFiles() {
                                                const imageWrappers = document.querySelectorAll(".image-wrapper");
                                                imageWrappers.forEach(wrapper => {
                                                    wrapper.parentNode.removeChild(wrapper);
                                                });
                                                const previewImages = document.querySelectorAll("#previewmulti");
                                                previewImages.forEach(img => {
                                                    img.style.display = "none";
                                                });
                                                const fileList = this.files;
                                                for (let i = 0; i < fileList.length; i++) {
                                                    const file = fileList[i];
                                                    const reader = new FileReader();
                                                    reader.readAsDataURL(file);
                                                    reader.onload = function () {
                                                        const imageWrapper = document.createElement("div");
                                                        imageWrapper.classList.add("image-wrapper");
                                                        const image = document.createElement("img");
                                                        image.classList.add("image");
                                                        image.src = this.result;
                                                        imageWrapper.appendChild(image);
                                                        const deleteBtn = document.createElement("button");
                                                        deleteBtn.classList.add("delete-btn");
                                                        deleteBtn.innerHTML = "X";
                                                        deleteBtn.addEventListener("click", function () {
                                                            containerElement.removeChild(imageWrapper);
                                                        });
                                                        imageWrapper.appendChild(deleteBtn);
                                                        containerElement.appendChild(imageWrapper);
                                                    };
                                                }
                                            }
                                        </script>


                                    </div>


                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="name3Example">Description <span style="color: red; font-weight: bold">*</span></label>
                                        <textarea type="" id="description" class="form-control form-control-lg" 
                                                  required name="description" />${detailproduct.description}"</textarea>
                                    </div>
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="status3Example">Status <span style="color: red; font-weight: bold">*</span></label>
                                        <select name="status" class="form-select form-select-lg" id="status3Example">

                                            <c:if test="${detailproduct.status eq 0}"><option hidden="" value ="${detailproduct.status}">Block</option></c:if>
                                            <c:if test="${detailproduct.status eq 1}"><option hidden="" value ="${detailproduct.status}">Active</option></c:if>

                                                <option value="1">Active</option>
                                                <option value="0">Block</option>                                  
                                            </select>
                                        </div>
                                        <div class="form-outline mb-3">
                                            <label class="form-label" for="status3Example">Category <span style="color: red; font-weight: bold">*</span></label>
                                            <select name="cateId" class="form-select form-select-lg" id="status3Example">
                                            <c:forEach items="${sessionScope.listCategories}" var="LC">  
                                                <c:if test="${LC.cateId eq detailproduct.cateId}"><option hidden="" value ="${detailproduct.cateId}">${LC.cateName}</option></c:if>
                                            </c:forEach>    


                                            <c:forEach items="${sessionScope.listCategories}" var="LC">  
                                                <option value="${LC.cateId}">${LC.cateName}</option>
                                            </c:forEach>                               
                                        </select>
                                    </div>
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example">Kích Cỡ </label>
                                        <input type="text" id="kichCo" class="form-control form-control-lg"
                                               name="kichCo" value="${detailproduct.kichCo}"/>
                                    </div>  
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example">Trọng Lượng</label>
                                        <input type="text" id="trongLuong" class="form-control form-control-lg"
                                               name="trongLuong" value="${detailproduct.trongLuong}"/>
                                    </div>  
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="img3Example">Catalogue <span style="color: red; font-weight: bold">*</span></label>

                                        <input type="file" name="file" id="myFile1" >

                                        <input type="text" id="detailPath" class="form-control form-control-lg"
                                               name="detailPath"  hidden="" value="${detailproduct.detailPath}"/>
                                    </div>  
                                    
                                    <div class="form-outline mb-3">
                                        <label class="form-label" for="price3Example">Price <span style="color: red; font-weight: bold">*</span></label>
                                        <input oninput="formatInput()" id="myInput"  input type="text" pattern="[0-9\.]*$" id="price3Example" class="form-control form-control-lg"
                                               required name="price" value="${detailproduct.price}"/>
                                    </div>
                                    

                                </div>
                                <div class="modal-footer">
                                    <a  href="AdminProductController" class="btn btn-secondary" >Close</a>
                                    <button id="update-profile-btn" type="submit" class="btn btn-danger">Update</button>
                                </div>
                            </form>
                        </div>


                    </div>

                </main>
                <!-- Footer -->
                <jsp:include page="components/adminFooter.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script>
                                            var input = document.getElementById('myFile');
                                            var fileName = document.getElementById('imgPath');
                                            input.addEventListener('change', function () {
                                                fileName.value = "files\\" + input.files[0].name;
                                            });
        </script>
        <script>
            var input1 = document.getElementById('myFile1');
            var fileName1 = document.getElementById('detailPath');
            input1.addEventListener('change', function () {
                fileName1.value = input1.files[0].name;
            });
        </script>
        <script>
            const fileInput = document.getElementById('myFile');
            const preview = document.getElementById('preview');
            fileInput.addEventListener('change', function () {
                const file = fileInput.files[0];
                const reader = new FileReader();
                reader.addEventListener('load', function () {
                    preview.src = reader.result;
                }, false);
                if (file) {
                    reader.readAsDataURL(file);
                }
            })
                    ;

        </script>
                <script>
            function formatInput() {
                var input = document.getElementById("myInput");
                var number = parseFloat(input.value.replace(/\D/g, '').replace(/,/g, '.'));
                input.value = number.toLocaleString('de-DE'); //dung dau "."
//                input.value = number.toLocaleString('en-US'); dung dau ','
                if (input.value === "NaN") {
                    input.value = ""; // đặt giá trị mặc định là 0
                }

            }

        </script>
    </body>
</html>
