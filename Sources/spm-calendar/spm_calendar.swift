import SwiftUI

public struct CalendarLabel:View {
    var imgLabel: String
    var width: Int
    var color: UIColor
    var ctn: String
    @Binding var currentLabel: String
    

    public init(imgLabel: String, currentLabel: Binding<String>,width: Int = 15, color: UIColor = .systemBlue)
    {
        self.imgLabel = imgLabel
        self.width = width
        self.color = color
        self._currentLabel = currentLabel
    }

    public var body: some View {
        HStack {
            Image("label")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(color))
                .onTapGesture{
                    self.currentLabel = currentLabel
                }
        }.frame(width: CGFloat(imgLabel * width))
    }

}

struct CalendarLabel_Previews: PreviewProvider {
    static var previews: some View {
        CalendarLabel(imgLabel: imgLabel)
            .environment(\.colorScheme, .light)
            .previewLayout(.sizeThatFits)
            .padding(10)
    }
}

