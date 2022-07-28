//
//  HexagonView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 16/6/22.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
      Canvas { context, size in
        context.draw(Text("Hello"), at: CGPoint(x: 50, y: 50))
        context.fill(Path(ellipseIn: CGRect(x: 30, y: 30, width: 100, height: 100)), with: .color(.pink))
        context.draw(Image("Blob 1"), in: CGRect(x: 0, y: 0, width: 200, height: 200))
        context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
      }
      .frame(width: 200, height: 200)
      .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}
