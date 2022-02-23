package com.wln.face.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wln.util.FaceUtil;
import com.wln.util.ImageUtils;


@WebServlet("/faceController")
public class FaceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       /*
       1接收浏览器请求 request
       2处理请求
       3返回数据给客户端 response
       */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//登录步骤:
		//1.获取客户上传图片到制定文件夹upimg
		File file=ImageUtils.uploadImg(request, "imgData", "upimg");
		boolean res=false;
		boolean delFlag=true;
		try {
			//2.判断是否包含人脸信息detect
			String faceToken=FaceUtil.detect(file);
			if(faceToken!=null){
			//2.1.包含：
			// 在faceset中找是否有相似度高的信息
				res=FaceUtil.search(faceToken);
			//   有:登录成功
			//   没有：登录失败
				//判定用户请求的类型
				String type=request.getParameter("type");
				if("register".equals(type)){//如果是注册
					if(res){//有：已注册过
						res=false;
				}else{//没有：可以注册 添加facetoken到faceset
					FaceUtil.addFace(faceToken);
					delFlag=false;
				}
			}
			}else{
			//2.2.不包含：登录失败，删照片
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//删除照片
			if(delFlag){
			file.delete();
			}
			//返回数据给客户端
			PrintWriter pw=response.getWriter();
			String msg="{\"success\":"+res+"}";
			pw.write(msg);
			pw.close();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
