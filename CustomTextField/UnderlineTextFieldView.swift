//
//  UnderlineTextFieldView.swift
//  CustomTextField
//
//  Created by Bruno Lorenzo on 6/27/20.
//  Copyright © 2020 blorenzo. All rights reserved.
//

import SwiftUI

struct UnderlineTextFieldView<TextFieldView>: View where TextFieldView: View {
    
    @Binding var text: String
    let textFieldView: TextFieldView
    let placeholder: String
    var imageName: String? = nil
    
    private var isTextFieldWithIcon: Bool {
        return imageName != nil
    }
    
    var body: some View {
        HStack {
            if isTextFieldWithIcon {
                iconImageView
            }
            underlineTextFieldView
        }
    }
}

// MARK: - Setups

extension UnderlineTextFieldView {
    private var iconImageView: some View {
        Image(imageName ?? "")
            .frame(width: 32, height: 32)
            .padding(.leading, 16)
            .padding(.trailing, 16)
    }
    
    private var underlineTextFieldView: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    placeholderView
                }
                
                textFieldView
                    .padding(.trailing, 16)
                    .padding(.leading, isTextFieldWithIcon ? 0 : 16)
            }
            
            underlineView
        }
    }
    
    private var placeholderView: some View {
        Text(placeholder)
            .foregroundColor(.white)
            .padding(.leading, isTextFieldWithIcon ? 0 : 16)
            .opacity(0.5)
    }
    
    private var underlineView: some View {
        Rectangle().frame(height: 1)
            .foregroundColor(.white)
            .padding(.trailing, 16)
            .padding(.leading, isTextFieldWithIcon ? 0 : 16)
    }
}
