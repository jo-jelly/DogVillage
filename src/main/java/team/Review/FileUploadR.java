package team.Review;

import java.io.File;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadR {
	public static String fileUpload(MultipartFile ff, HttpServletRequest request) {

		String path = request.getRealPath("/img");

		path = "C:\\Users\\82109\\workspace\\sts_mvc_work\\t_proj1223청지우\\t_proj1223밤\\src\\main\\webapp\\img";

		String res = fileNewName(path, ff.getOriginalFilename());

		try {

			FileOutputStream fos = new FileOutputStream(path + "\\" + res);

			fos.write(ff.getBytes());

			fos.close();

		} catch (Exception e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return res;

	}

	static String fileNewName(String path, String ff) {

		path += "\\";

		try {

			int pos = ff.lastIndexOf(".");

			String domain = ff.substring(0, pos);

			String ext = ff.substring(pos);

			File newFile = new File(path + ff);

			int i = 0;

			while (newFile.exists()) {

				i++;

				ff = domain + "_" + i + ext;

				newFile = new File(path + ff);

			}

			// System.out.println(newFile.getPath());

		} catch (Exception e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		return ff;

	}
}
