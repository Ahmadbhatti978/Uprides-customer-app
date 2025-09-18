// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'statusCode': instance.statusCode,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      driverName: json['driver_name'] as String?,
      vehicle: json['vehicle'] as String?,
      vehicleDetails: json['vehicleDetails'] == null
          ? null
          : VehicleDetails.fromJson(
              json['vehicleDetails'] as Map<String, dynamic>),
      vin: json['vin'] as String?,
      pickupAddress: json['pickup_address'] as String?,
      dropoffAddress: json['dropoff_address'] as String?,
      pickupToDropoffPolyline: json['pickup_to_dropoff_polyline'] as String?,
      fare: (json['fare'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      amountPaid: (json['amount_paid'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      distance: (json['distance'] as num?)?.toDouble(),
      rideCreatedAt: json['ride_created_at'] == null
          ? null
          : DateTime.parse(json['ride_created_at'] as String),
      cancellationCharges: (json['cancellation_charges'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'driver_name': instance.driverName,
      'vehicle': instance.vehicle,
      'vehicleDetails': instance.vehicleDetails,
      'vin': instance.vin,
      'pickup_address': instance.pickupAddress,
      'dropoff_address': instance.dropoffAddress,
      'pickup_to_dropoff_polyline': instance.pickupToDropoffPolyline,
      'fare': instance.fare,
      'total': instance.total,
      'vat': instance.vat,
      'amount_paid': instance.amountPaid,
      'duration': instance.duration,
      'distance': instance.distance,
      'ride_created_at': instance.rideCreatedAt?.toIso8601String(),
      'cancellation_charges': instance.cancellationCharges,
    };

_VehicleDetails _$VehicleDetailsFromJson(Map<String, dynamic> json) =>
    _VehicleDetails(
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleDetailsToJson(_VehicleDetails instance) =>
    <String, dynamic>{
      'vehicle': instance.vehicle,
    };

_Vehicle _$VehicleFromJson(Map<String, dynamic> json) => _Vehicle(
      id: json['id'] as String?,
      organizationId: json['organization_id'] as String?,
      registrationNumber: json['registration_number'] as String?,
      brandName: json['brand_name'] as String?,
      seats: (json['seats'] as num?)?.toInt(),
      color: json['color'] as String?,
      status: (json['status'] as num?)?.toInt(),
      modelYear: (json['model_year'] as num?)?.toInt(),
      isPetFriendly: json['is_pet_friendly'] as bool?,
      isAssist: json['is_assist'] as bool?,
      isJumpstart: json['is_jumpstart'] as bool?,
      isListing: json['is_listing'] as bool?,
      isBoldMiles: json['is_bold_miles'] as bool?,
      rentalSecurityDeposit: (json['rental_security_deposit'] as num?)?.toInt(),
      rentalDailyCharges: (json['rental_daily_charges'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      isBlocked: json['is_blocked'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      vin: json['vin'] as String?,
      vehicleType: json['vehicle_type'] == null
          ? null
          : VehicleType.fromJson(json['vehicle_type'] as Map<String, dynamic>),
      vehicleImage: json['vehicle_image'] as String?,
      vehicleModel: json['vehicle_model'] as String?,
      vehicleId: json['vehicle_id'] as String?,
      rideTypeCategory: json['ride_type_category'] == null
          ? null
          : RideTypeCategory.fromJson(
              json['ride_type_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleToJson(_Vehicle instance) => <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'registration_number': instance.registrationNumber,
      'brand_name': instance.brandName,
      'seats': instance.seats,
      'color': instance.color,
      'status': instance.status,
      'model_year': instance.modelYear,
      'is_pet_friendly': instance.isPetFriendly,
      'is_assist': instance.isAssist,
      'is_jumpstart': instance.isJumpstart,
      'is_listing': instance.isListing,
      'is_bold_miles': instance.isBoldMiles,
      'rental_security_deposit': instance.rentalSecurityDeposit,
      'rental_daily_charges': instance.rentalDailyCharges,
      'is_active': instance.isActive,
      'is_blocked': instance.isBlocked,
      'is_deleted': instance.isDeleted,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'vin': instance.vin,
      'vehicle_type': instance.vehicleType,
      'vehicle_image': instance.vehicleImage,
      'vehicle_model': instance.vehicleModel,
      'vehicle_id': instance.vehicleId,
      'ride_type_category': instance.rideTypeCategory,
    };

_RideTypeCategory _$RideTypeCategoryFromJson(Map<String, dynamic> json) =>
    _RideTypeCategory(
      typeId: json['type_id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RideTypeCategoryToJson(_RideTypeCategory instance) =>
    <String, dynamic>{
      'type_id': instance.typeId,
      'type': instance.type,
    };

_VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) => _VehicleType(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VehicleTypeToJson(_VehicleType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
