package kr.co.mlec.common.file;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

/**
 * @param oriPath : 썸네일을 생성할 원본 이미지
 * @param targetPath : 썸네일의 이름 및 저장할 경로 지정
 * @param newWidth : 생성하려는 썸네일의 넓이
 * @param newHeight : 생성하려는 썸네일의 높이
 * @param type : 생성할 썸네일의 비율 기준(W : 넓이에 맞춰져서 기준, H : 높이를 기준으로, X : 비율무시	 지정한 수치대로)
 * 
 *
 */

public class ThumbnailUtil {
	public static void createThumbnail(String oriPath, String targetPath,
			int newWidth, int newHeight, String type) {
		
		String format = "jpg";
		try {
			int thumbWidth = 0;
			int thumbHeight = 0;
			
			// 원본이미지의 넓이와 높이를 가져오는 API
			Image image = ImageIO.read(new File(oriPath));
			int oriWidth = image.getWidth(null);
			int oriHeight = image.getHeight(null);
		
			double ratio = 0;
			//비율이 나옴
			switch (type) {
			case "W" :
				ratio = (double)newWidth / oriWidth;
				// 비율에 맞춰서 섬네일의 위스와 헤이트를 얻는데
				thumbWidth = (int)(ratio * oriWidth);
				thumbHeight = (int)(ratio *oriHeight);
				break;
			case "H" :
				ratio = (double)newHeight / oriHeight;			
				thumbWidth = (int)(ratio * oriWidth);
				thumbHeight = (int)(ratio *oriHeight);
				break;
			default :
				thumbWidth = newWidth;
				thumbHeight = newHeight;
				break;
			}
			
//			System.out.println(oriWidth + "-" + oriHeight);
//			System.out.println(thumbWidth + "-" + thumbHeight);
			
			// 썸네일 생성하기
			// fast 빠르지만 깨짐 smooth 이미지를 부드럽게 만들어줌 
			Image reImage = image.getScaledInstance(thumbWidth, thumbHeight, Image.SCALE_SMOOTH);
			BufferedImage bImage = new BufferedImage(thumbWidth, thumbHeight, BufferedImage.TYPE_INT_RGB);
			//그림을 그리기위해서
			// reImage 객체의 내용을 BImage 객체의 메모리에 저장하기
			Graphics g = bImage.getGraphics();
			g.drawImage(reImage, 0, 0, null);
			// 메모리를 효율적으로 사용하기위해서 
			g.dispose();
			
			//버퍼에 있는 이미지를 실제 파일로 저장해야함
			// bImage 의 내용을 targetPath에 저장하기
			ImageIO.write(bImage, format, new File(targetPath));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
