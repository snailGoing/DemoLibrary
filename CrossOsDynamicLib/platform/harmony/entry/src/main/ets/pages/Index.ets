import { squareDifference } from 'libentry.so';

@Entry
@Component
struct Index {
  @State message: string = '计算平方差';

  build() {
    Row() {
      Column() {
        Button("点击我")
          .fontSize(30)
          .onClick(() => {
            this.message = '2 和 3的平方差：' + squareDifference(2, 3)
          })
          .margin({ bottom: 20 })
        Text(this.message)
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}
