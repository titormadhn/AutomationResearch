from robot.api.deco import keyword
from pyzbar.pyzbar import decode
from PIL import Image

class QRDecoder:

    @keyword("Decode QR Code From Image")
    def decode_qr_code_from_image(self, image_path):
        img = Image.open(image_path)
        decoded_objects = decode(img)

        if not decoded_objects:
            raise Exception(f"Tidak ada QR code terdeteksi pada gambar: {image_path}")

        qr_data = decoded_objects[0].data.decode("utf-8")
        return qr_data

    @keyword("Crop Image To QR Area")
    def crop_image_to_qr_area(self, source_path, output_path, x, y, width, height, padding=10):
        img = Image.open(source_path)

        left = max(0, int(x) - padding)
        top = max(0, int(y) - padding)
        right = int(x) + int(width) + padding
        bottom = int(y) + int(height) + padding

        cropped = img.crop((left, top, right, bottom))
        cropped.save(output_path)
    
    @keyword("Get Image Size")
    def get_image_size(self, image_path):
      img = Image.open(image_path)
      return {"width": img.width, "height": img.height}