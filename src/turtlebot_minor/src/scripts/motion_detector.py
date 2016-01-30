#!/usr/bin/env python

import cv2
from cv_bridge import CvBridge


class MotionDetector:

    def __init__(self):
        pass

    @staticmethod
    def prepare_image(image):
        cv2_image = CvBridge().imgmsg_to_cv2(image)
        cv2_image = cv2.resize(cv2_image, (250, 250))
        cv2_image = cv2.cvtColor(cv2_image, cv2.COLOR_BAYER_GR2GRAY)
        cv2_image = cv2.GaussianBlur(cv2_image, (21, 21), 0)

        return cv2_image

    @staticmethod
    def calculate_image_diff(image1, image2):
        image_diff = cv2.absdiff(image1, image2)
        (_, image_diff) = cv2.threshold(image_diff, 10, 255, cv2.THRESH_BINARY)
        image_diff = cv2.dilate(image_diff, None, iterations=2)

        return image_diff

    def show_diff(self, image1_buff, image2_burr):
        image_1 = self.prepare_image(image1_buff)
        image_2 = self.prepare_image(image2_burr)

        image_diff = self.calculate_image_diff(image_1, image_2)
        merged_image = cv2.addWeighted(image_2, .3, image_diff, .7, 0.)

        cv2.imshow("image", merged_image)
        cv2.waitKey(200)
