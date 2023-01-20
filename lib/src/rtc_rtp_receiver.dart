import 'enums.dart';
import 'media_stream_track.dart';
import 'rtc_rtp_capabilities.dart';
import 'rtc_rtp_parameters.dart';
import 'rtc_stats_report.dart';

abstract class RTCRtpReceiver {
  RTCRtpReceiver();

  Future<List<StatsReport>> getStats();

  /// public:
  Function(RTCRtpReceiver rtpReceiver, RTCRtpMediaType mediaType)?
      onFirstPacketReceived;

  /// The WebRTC specification only defines RTCRtpParameters in terms of senders,
  /// but this API also applies them to receivers, similar to ORTC:
  /// http://ortc.org/wp-content/uploads/2016/03/ortc.html#rtcrtpparameters*.
  RTCRtpParameters get parameters;

  Future<RTCRtpCapabilities> getCapabilities();

  MediaStreamTrack? get track;

  String get receiverId;
}
