import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsdfasdfRecord extends FirestoreRecord {
  AsdfasdfRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "asdfasdf" field.
  double? _asdfasdf;
  double get asdfasdf => _asdfasdf ?? 0.0;
  bool hasAsdfasdf() => _asdfasdf != null;

  void _initializeFields() {
    _asdfasdf = castToType<double>(snapshotData['asdfasdf']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asdfasdf');

  static Stream<AsdfasdfRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsdfasdfRecord.fromSnapshot(s));

  static Future<AsdfasdfRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsdfasdfRecord.fromSnapshot(s));

  static AsdfasdfRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsdfasdfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsdfasdfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsdfasdfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsdfasdfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsdfasdfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsdfasdfRecordData({
  double? asdfasdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'asdfasdf': asdfasdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsdfasdfRecordDocumentEquality implements Equality<AsdfasdfRecord> {
  const AsdfasdfRecordDocumentEquality();

  @override
  bool equals(AsdfasdfRecord? e1, AsdfasdfRecord? e2) {
    return e1?.asdfasdf == e2?.asdfasdf;
  }

  @override
  int hash(AsdfasdfRecord? e) => const ListEquality().hash([e?.asdfasdf]);

  @override
  bool isValidKey(Object? o) => o is AsdfasdfRecord;
}
