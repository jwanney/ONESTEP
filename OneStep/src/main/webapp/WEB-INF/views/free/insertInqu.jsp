<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="layout-px-spacing">
	<div class="layout-top-spacing mb-2">
	    <div class="col-md-12">
	        <div class="row">
	            <div class="container p-0">
	                <div class="row layout-top-spacing">
	                    <div class="col-lg-12 layout-spacing">
	                        <div class="statbox widget box box-shadow mb-4">
	                        <form action="/free/insertInqu" method="post" enctype="multipart/form-data">
	                            <div class="widget-content widget-content-area">
	                                <div class="form-group">
	                                    <label>문의 제목
	                                    <span class="text-danger">*</span></label>
	                                    <input type="text" class="form-control" name="boardTitle">
	                                </div>
	                                <div class="form-group">
	                                    <label for="exampleInputPassword1">문의 내용 
	                                    <span class="text-danger">*</span></label>
	                                    <textarea rows="10" class="form-control"  name="boardContent"></textarea>
	                                </div>
	                            </div>
	                 <div class="row layout-top-spacing">
	                    <div class="col-lg-12 layout-spacing">
	                        <div class="statbox widget box box-shadow">
	                            <div class="widget-header">
	                                <div class="row">
	                                    <div class="col-xl-12 col-md-12 col-sm-12 col-12">
	                                        <h4>File Input</h4>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="widget-content widget-content-area">
	                                <div class="form-group row">
	                                    <div class="col-lg-12 col-md-12 col-sm-12">
	                                        <div class="attached-files">
	                                            <img id="image-preview" width="320">
	                                        </div>
	                                        <label for="file-upload" class="custom-file-upload mb-0">
	                                            <a title="Attach a file" class="mr-2 pointer text-primary">
	                                                <i class="las la-paperclip font-20"></i>
	                                                <span class="font-17">클릭하여 이미지를 넣어주세요</span>
	                                            </a>
	                                        </label>
	                                        <input id="file-upload" name='boardFile' type="file" accept="image/*" style="display:none;" multiple="multiple">
						                </div>
						            </div>
						        </div>
						    </div>
						</div> 
					</div>
						        <div class="widget-footer text-right">
						            <button type="submit" class="btn btn-primary mr-2" >Submit</button>
						            <button type="reset" class="btn btn-outline-primary">Cancel</button>
						        </div>
					        </form>
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
