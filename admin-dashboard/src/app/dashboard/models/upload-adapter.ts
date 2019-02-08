export class UploadAdapter {
    private loader;
    constructor(loader: any) {
      this.loader = loader;
      console.log(this.readThis(loader.file));
    }

    public upload(): Promise<any> {
      // 'data:image/png;base64,"+ btoa(binaryString)
      return this.readThis(this.loader.file);
    }

    readThis(file: File): Promise<any> {
      console.log(file);
      const imagePromise: Promise<any> = new Promise((resolve, reject) => {
        const myReader: FileReader = new FileReader();
        myReader.onloadend = (e) => {
          const image = myReader.result;
          console.log(image);
          return { default: 'data:image/png;base64,' + image };
          resolve();
        };
        myReader.readAsDataURL(file);
      });
      return imagePromise;
    }

  }
