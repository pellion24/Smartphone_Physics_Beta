//
//  UploadView.swift
//  Smartphone_Physics_Beta
//
//  Created by Ashvij Hosdurg on 2/12/26.
//

import SwiftUI
import PhotosUI

struct UploadView: View {
    @State private var selectedItem: PhotosPickerItem? //holds the selected photo item
    @State private var selectedImage: UIImage? //holds the loaded image
    var body: some View {
        Text("SmartPhone Physics")
        Text("Upload Media")
        PhotosPicker(
            selection: $selectedItem, //bind to the selected item
            matching: .images, //show only images
            photoLibrary: .shared()
            
        )
        
        {
            Text("Select Photo")
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .foregroundStyle(Color.white)
                .cornerRadius(25)
        }
        .onChange(of: selectedItem){
            newItem in
            //handle the selected item
            if let newItem = newItem {
                Task{
                    if let data = try? await newItem.loadTransferable(type: Data.self),
                       let image = UIImage (data: data){
                        selectedImage = image //update the selected image
                    }
                }
            }
        }
    }
}

#Preview {
    UploadView()
}
