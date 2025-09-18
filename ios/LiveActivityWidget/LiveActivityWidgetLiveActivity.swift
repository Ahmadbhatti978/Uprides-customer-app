//
//  LiveActivityWidgetLiveActivity.swift
//  LiveActivityWidget
//
//  Created by Himanshu on 21/06/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

 
 
// --- IMPORTANT SETUP ---
// Your App Group ID must be set here and in your Flutter code.
let sharedDefault = UserDefaults(suiteName: "group.com.bold.customer")!

// --- REQUIRED BY THE PACKAGE ---
struct LiveActivitiesAppAttributes: ActivityAttributes, Identifiable {
    public typealias LiveDeliveryData = ContentState
    var id = UUID()
    public struct ContentState: Codable, Hashable {}
}

extension LiveActivitiesAppAttributes {
    func prefixedKey(_ key: String) -> String {
        return "\(id)_\(key)"
    }
}

// --- YOUR WIDGET IMPLEMENTATION ---
struct LiveActivityWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { context in
            // --- Main View for the Live Activity ---
            RideTrackingView(
                minutesToArrive: sharedDefault.integer(forKey: context.attributes.prefixedKey("minutesToArrive")),
                otp: sharedDefault.string(forKey: context.attributes.prefixedKey("otp")) ?? "----",
                driverName: sharedDefault.string(forKey: context.attributes.prefixedKey("driverName")) ?? "Driver",
                licensePlate: sharedDefault.string(forKey: context.attributes.prefixedKey("licensePlate")) ?? "",
                carModel: sharedDefault.string(forKey: context.attributes.prefixedKey("carModel")) ?? "Car",
                carArriveProgress: sharedDefault.integer(forKey: context.attributes.prefixedKey("carArriveProgress"))
            )
            .background(Color.black)
            .activityBackgroundTint(Color.black)
        } dynamicIsland: { context in
            // --- Data is now read from UserDefaults ---
            let minutesToArrive = sharedDefault.integer(forKey: context.attributes.prefixedKey("minutesToArrive"))
            let driverName = sharedDefault.string(forKey: context.attributes.prefixedKey("driverName")) ?? "Driver"

            return DynamicIsland {
                // Expanded UI
                DynamicIslandExpandedRegion(.leading) {
                    Text("Pickup in")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("\(minutesToArrive) min")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                DynamicIslandExpandedRegion(.center) {
                    Text(driverName)
                        .lineLimit(1)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    ProgressBarWithCar(
                        progress: sharedDefault.integer(forKey: context.attributes.prefixedKey("carArriveProgress"))
                    )
                    .padding(.horizontal)
                }
            } compactLeading: {
                Image(systemName: "car.fill")
                    .foregroundColor(.cyan)
            } compactTrailing: {
                Text("\(minutesToArrive) min")
                    .foregroundColor(.cyan)
            } minimal: {
                Image(systemName: "car.fill")
                    .foregroundColor(.cyan)
            }
        }
    }
}




// MARK: - RideTrackingView
struct RideTrackingView: View {
    var minutesToArrivePreview: Int?
    var otpPreview: String?
    var driverNamePreview: String?
    var licensePlatePreview: String?
    var carModelPreview: String?
    var carArriveProgressPreview: Int?

    private var minutesToArrive: Int {
        return minutesToArrivePreview ?? 0
    }
    private var otp: String {
        return otpPreview ?? "----"
    }
    private var driverName: String {
        return driverNamePreview ?? "Driver"
    }
    private var licensePlate: String {
        return licensePlatePreview ?? " "
    }
    private var carModel: String {
        return carModelPreview ?? "Car"
    }
    private var carArriveProgress: Int {
        return carArriveProgressPreview ?? 0
    }

    init(minutesToArrive: Int, otp: String, driverName: String, licensePlate: String, carModel: String, carArriveProgress: Int) {
        self.minutesToArrivePreview = minutesToArrive
        self.otpPreview = otp
        self.driverNamePreview = driverName
        self.licensePlatePreview = licensePlate
        self.carModelPreview = carModel
        self.carArriveProgressPreview = carArriveProgress
    }

    var body: some View {
        VStack(spacing: 16) {
            // Top Section
            HStack(alignment: .top) {
                Image("bod_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)

                Spacer()

                ZStack {
                    Image("icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        .offset(x: -50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 70, height: 45)
                        .background(
                            Image("icon")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 45)
                                .clipped()
                        )
                }
            }

            // Middle Section
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Pickup in \(minutesToArrive) min")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white)
                    Text("OTP : \(otp)")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white)
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 6) {
                    Text(carModel)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white)
                    Text(licensePlate)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.gray)
                }
            }

            // Progress Bar
            ProgressBarWithCar(progress: carArriveProgress)
        }
        .padding()
        .background(Color.black)
    }
}

// MARK: - ProgressBarWithCar
struct ProgressBarWithCar: View {
    var progress: Int = 0
    @State private var barWidth: CGFloat = 0

    init(progress: Int) {
        self.progress = progress
    }

    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                ProgressView(value: Double(self.progress), total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint: .white))
                    .background(Color.gray.opacity(0.4))
                    .frame(height: 28)
                    .cornerRadius(6)
                    .overlay(
                        GeometryReader { geometry in
                            Color.clear.onAppear {
                                self.barWidth = geometry.size.width
                            }
                        }
                    )

                Image("car")
                    .resizable()
                    .frame(width: 67, height: 42)
                    .offset(x: CGFloat(Double(self.progress) / 100) * barWidth - 32)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))

            SquareEnd()
        }
    }
}

// MARK: - SquareEnd
struct SquareEnd: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.white)
                .frame(width: 24, height: 24)
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 12, height: 12)
        }
    }
}
