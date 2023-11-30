import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoutesRecord extends FirestoreRecord {
  RoutesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  bool hasEnd() => _end != null;

  void _initializeFields() {
    _start = snapshotData['start'] as String?;
    _end = snapshotData['end'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routes');

  static Stream<RoutesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutesRecord.fromSnapshot(s));

  static Future<RoutesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutesRecord.fromSnapshot(s));

  static RoutesRecord fromSnapshot(DocumentSnapshot snapshot) => RoutesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutesRecordData({
  String? start,
  String? end,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'start': start,
      'end': end,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutesRecordDocumentEquality implements Equality<RoutesRecord> {
  const RoutesRecordDocumentEquality();

  @override
  bool equals(RoutesRecord? e1, RoutesRecord? e2) {
    return e1?.start == e2?.start && e1?.end == e2?.end;
  }

  @override
  int hash(RoutesRecord? e) => const ListEquality().hash([e?.start, e?.end]);

  @override
  bool isValidKey(Object? o) => o is RoutesRecord;
}
