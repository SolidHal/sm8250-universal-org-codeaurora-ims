.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;
    }
.end annotation


# static fields
.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field private static final DEFAULT_CALL_INDEX:I = -0x1

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x8

.field private static final EVENT_ADD_PARTICIPANTS:I = 0x11

.field private static final EVENT_CLOSE_SESSION:I = 0xb

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x10

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xa

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0x9

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0xc

.field private static final EVENT_RTT_UPGRADE_CONFIRM_DONE:I = 0xf

.field private static final EVENT_SEND_DTMF:I = 0x13

.field private static final EVENT_SEND_RTT_MESSAGE:I = 0xd

.field private static final EVENT_SEND_RTT_MODIFY_REQUEST:I = 0xe

.field private static final EVENT_TRANSFER:I = 0x14

.field private static final EVENT_VOICE_INFO_CHANGED:I = 0x12

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field public static final SIP_FORBIDDEN:I = 0x193

.field public static final SIP_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SERVER_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SIP_SERVER_MESSAGE_TOOLARGE:I = 0x201

.field public static final SIP_SERVER_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_SERVER_PRECONDITION_FAILURE:I = 0x244

.field public static final SIP_SERVER_VERSION_UNSUPPORTED:I = 0x1f9

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final VOLUME_FOR_ALERT:I = 0x28


# instance fields
.field private mAnswerOptionTirConfig:I

.field private mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

.field private mCallId:I

.field private mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mCallStartTime:J

.field private mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

.field private mCallee:Ljava/lang/String;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field private mIsConfInProgress:Z

.field mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field public mIsMergeHostSession:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field private mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mMergeStatus:I

.field private mMtSuppSvcCode:I

.field private mPendingAddParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

.field private mStateChangeReportingAllowed:Z

.field private mUstImsNotifyer:Lcom/oneplus/operator/ust/UstImsNotifyer;

.field private mVoWifiQuality:I

.field private mWifiAlertHandler:Landroid/os/Handler;

.field private newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "handler"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 166
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 168
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v2, v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 170
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v2}, Lorg/codeaurora/ims/QImsCallProfile;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 172
    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 175
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 176
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 177
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 178
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 179
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 180
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 186
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 187
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 189
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 191
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    .line 193
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 194
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 195
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 196
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 200
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 201
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMergeStatus:I

    .line 207
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartTime:J

    .line 219
    new-instance v1, Lcom/oneplus/operator/ust/UstImsNotifyer;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/oneplus/operator/ust/UstImsNotifyer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mUstImsNotifyer:Lcom/oneplus/operator/ust/UstImsNotifyer;

    .line 221
    if-nez p5, :cond_1

    const v1, 0x7f010003

    .line 222
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v1, v3

    .line 223
    .local v1, "shallCreateVideoProvider":Z
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 224
    iput-boolean p5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 225
    iput-object p6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 226
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I

    .line 257
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    .line 260
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->updateProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 261
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V
    .locals 7
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I

    .line 269
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    .line 273
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 274
    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 275
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 278
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 280
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/QImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantsList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantResponse(Z)V

    return-void
.end method

.method static synthetic access$302(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/codeaurora/ims/ImsRilException;

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 103
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$502(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 103
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 103
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method private alertForHandoverFailed()V
    .locals 2

    .line 2823
    const-string v0, "config_regional_wifi_calling_notificaion_enable"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2825
    .local v0, "shouldAlert":Z
    if-eqz v0, :cond_0

    .line 2826
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    .line 2828
    :cond_0
    return-void
.end method

.method private broadcastCallCountAndDurationIntent(Ljava/lang/String;J)V
    .locals 6
    .param p1, "callState"    # Ljava/lang/String;
    .param p2, "callTime"    # J

    .line 3203
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 3204
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 3205
    .local v1, "subId":I
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3206
    const-string v2, "broadcastCallCountAndDurationIntent: Invalid sub id"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3207
    return-void

    .line 3209
    :cond_1
    const-string v2, "MO"

    if-eq p1, v2, :cond_3

    const-string v2, "MT"

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 3212
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartTime:J

    goto :goto_2

    .line 3210
    :cond_3
    :goto_1
    iput-wide p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartTime:J

    .line 3215
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oem.intent.action.CALL_COUNT_AND_DURATION_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3216
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.telephonyoptimization"

    const-string v5, "com.oneplus.telephonyoptimization.OPCollectionDataTelephonyReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3217
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v4, "call_count_and_duration_phone_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3218
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "call_count_and_duration_call_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    const-string v3, "call_count_and_duration_state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3220
    const-string v3, "call_count_and_duration_time"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3221
    const-string v3, "Broadcast call count and duration information intent"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3222
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3223
    return-void
.end method

.method private broadcastCallDropIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "callDropReason"    # Ljava/lang/String;
    .param p4, "errorExtraCode"    # Ljava/lang/String;
    .param p5, "errorExtraReason"    # Ljava/lang/String;

    .line 3136
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 3137
    .local v3, "subIds":[I
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    aget v5, v3, v4

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    .line 3138
    .local v5, "subId":I
    :goto_0
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3139
    const-string v4, "broadcastCallDropIntent: Invalid sub id"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3140
    return-void

    .line 3142
    :cond_1
    iget-object v6, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 3143
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    .line 3144
    .local v7, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v8

    .line 3145
    .local v8, "voiceRat":I
    invoke-static {v8}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v9

    .line 3146
    .local v9, "cellRat":Ljava/lang/String;
    iget-object v10, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "5g_nr_working"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v12, :cond_3

    const/16 v10, 0xe

    if-eq v8, v10, :cond_2

    const/16 v10, 0x13

    if-ne v8, v10, :cond_3

    :cond_2
    move v4, v12

    .line 3149
    .local v4, "isNsa":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 3150
    const-string v9, "NR_NSA"

    .line 3152
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3153
    .local v10, "callEndTime":J
    const-wide/16 v12, 0x0

    .line 3154
    .local v12, "callDuration":J
    iget-wide v14, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_5

    .line 3155
    sub-long v12, v10, v14

    .line 3157
    :cond_5
    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 3158
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.oem.intent.action.CALL_DROP_INFO"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3159
    .local v14, "intent":Landroid/content/Intent;
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .end local v3    # "subIds":[I
    .end local v4    # "isNsa":Z
    .local v16, "subIds":[I
    .local v17, "isNsa":Z
    invoke-direct {v15, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3160
    iget v15, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v3, "call_drop_phone_id"

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3161
    const-string v3, "call_drop_call_type"

    const-string v15, "ims"

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3162
    const-string v3, "call_drop_reason"

    move-object/from16 v15, p3

    invoke-virtual {v14, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3164
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    move/from16 v18, v5

    .end local v5    # "subId":I
    .local v18, "subId":I
    const-string v5, ""

    move-object/from16 v19, v6

    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    .local v19, "tm":Landroid/telephony/TelephonyManager;
    const-string v6, "call_start_type"

    if-ne v3, v4, :cond_6

    .line 3165
    const-string v3, "MO"

    invoke-virtual {v14, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 3166
    :cond_6
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MT:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    if-ne v3, v4, :cond_7

    .line 3167
    const-string v3, "MT"

    invoke-virtual {v14, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 3169
    :cond_7
    invoke-virtual {v14, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3172
    :goto_1
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOLTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    const-string v6, "call_drop_cell_rat"

    move-object/from16 v20, v7

    .end local v7    # "ss":Landroid/telephony/ServiceState;
    .local v20, "ss":Landroid/telephony/ServiceState;
    const-string v7, "call_fail_type"

    if-ne v3, v4, :cond_8

    .line 3173
    const-string v3, "VoLTE"

    invoke-virtual {v14, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3174
    invoke-virtual {v14, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v21, v8

    goto :goto_2

    .line 3175
    :cond_8
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    move/from16 v21, v8

    .end local v8    # "voiceRat":I
    .local v21, "voiceRat":I
    const-string v8, "WLAN"

    if-ne v3, v4, :cond_9

    .line 3176
    const-string v3, "VoWiFi"

    invoke-virtual {v14, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3177
    invoke-virtual {v14, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3178
    :cond_9
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VILTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    if-ne v3, v4, :cond_a

    .line 3179
    const-string v3, "ViLTE"

    invoke-virtual {v14, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3180
    invoke-virtual {v14, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3181
    :cond_a
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VIWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    if-ne v3, v4, :cond_b

    .line 3182
    const-string v3, "ViWiFi"

    invoke-virtual {v14, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3183
    invoke-virtual {v14, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3185
    :cond_b
    invoke-virtual {v14, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3186
    invoke-virtual {v14, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3190
    :goto_2
    long-to-int v3, v12

    const-string v4, "call_duration"

    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3191
    const-string v3, "call_drop_extra_code"

    invoke-virtual {v14, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3192
    const-string v3, "call_drop_extra_reason"

    invoke-virtual {v14, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast call drop information intent - call_duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", CallStartType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", CallFailType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cellRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", errorExtraCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", errorExtraReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3196
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3197
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2200
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2201
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2202
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2200
    :goto_1
    return v0
.end method

.method private doClose()V
    .locals 4

    .line 1304
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    const-string v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 1312
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->close()V

    .line 1314
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 1316
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 1317
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    goto :goto_0

    .line 1320
    :cond_2
    const-string v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_4

    .line 1323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1325
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 1327
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForVoiceInfo(Landroid/os/Handler;)V

    .line 1331
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1333
    :cond_5
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1334
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1335
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1336
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1337
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1338
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1340
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 1341
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1342
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1343
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1344
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1345
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1346
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1347
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1348
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1349
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    goto :goto_1

    .line 1328
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1351
    :cond_6
    :goto_1
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1590
    if-nez p1, :cond_0

    .line 1591
    const-string v0, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1592
    return-void

    .line 1594
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1604
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1606
    const/4 v0, 0x0

    .line 1607
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1608
    .local v1, "keyAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1610
    .local v2, "namespaceAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 1611
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    .line 1612
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1614
    const/4 v4, 0x0

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 1619
    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 1620
    aget-object v4, v1, v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1621
    aget-object v0, v2, v7

    goto :goto_1

    .line 1623
    :cond_1
    aget-object v0, v1, v4

    .line 1636
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    aget-object v5, v1, v7

    invoke-virtual {v4, v0, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1626
    :cond_2
    const-string v4, "Bad extra string from lower layers!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    return-void

    .line 1630
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is null in CallDetails Extras!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1631
    return-void

    .line 1640
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyAndValue":[Ljava/lang/String;
    .end local v2    # "namespaceAndKey":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V
    .locals 8
    .param p1, "callExtras"    # Landroid/os/Bundle;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2215
    if-eqz p1, :cond_2

    .line 2216
    const/4 v0, 0x0

    .line 2217
    .local v0, "extraString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2218
    .local v1, "extras":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2222
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2223
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    goto :goto_1

    .line 2224
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 2226
    aput-object v0, v1, v2

    .line 2227
    nop

    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 2228
    goto :goto_0

    .line 2229
    :cond_1
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 2230
    .end local v0    # "extraString":Ljava/lang/String;
    .end local v1    # "extras":[Ljava/lang/String;
    .end local v2    # "i":I
    goto :goto_2

    .line 2231
    :cond_2
    const-string v0, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2233
    :goto_2
    return-void
.end method

.method private extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "historyInfoString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2175
    .local v0, "historyInfoStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "[\\r\\n]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2178
    .local v1, "historyInfoHops":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2179
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractHistoryInfoDetails :: historyInfoHops["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2183
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private failDialRequest(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 2193
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2194
    .local v0, "newMsg":Landroid/os/Message;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "Dial Failed"

    invoke-direct {v1, v2, p1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2196
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2197
    return-void
.end method

.method private static getCallModeFromRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1752
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    .line 1758
    const/4 v0, 0x0

    return v0

    .line 1756
    :cond_0
    return v0

    .line 1754
    :cond_1
    const/16 v0, 0xe

    return v0
.end method

.method public static getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3
    .param p0, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2038
    if-nez p0, :cond_0

    .line 2039
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v0

    return-object v0

    .line 2041
    :cond_0
    nop

    .line 2042
    const-string v0, "originatingNumber"

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "originatingNumber":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2046
    :cond_1
    const/4 v1, 0x1

    const-string v2, "lineType"

    invoke-virtual {p0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 2048
    .local v1, "callType":I
    new-instance v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v2, v0, v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 2044
    .end local v1    # "callType":I
    :cond_2
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    return-object v1
.end method

.method private getMtSuppSvcCode()I
    .locals 1

    .line 862
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return v0
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "strResName"    # Ljava/lang/String;
    .param p2, "strPackage"    # Ljava/lang/String;

    .line 2807
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 2809
    .local v1, "resCtx":Landroid/content/Context;
    if-nez v1, :cond_0

    return v0

    .line 2810
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2811
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_1

    return v0

    .line 2812
    :cond_1
    const-string v3, "bool"

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2813
    .local v3, "resID":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2814
    .end local v1    # "resCtx":Landroid/content/Context;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :catch_0
    move-exception v1

    .line 2815
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2817
    .end local v1    # "err":Ljava/lang/Exception;
    return v0
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "cause":I
    if-eqz p2, :cond_1

    .line 328
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 329
    .local v4, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v4, :cond_0

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 331
    iget-object v1, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 332
    goto :goto_1

    .line 328
    .end local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    :cond_1
    :goto_1
    return v0
.end method

.method private getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5
    .param p1, "callType"    # I
    .param p2, "list"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 3014
    const/4 v0, 0x0

    .line 3015
    .local v0, "mode":I
    if-eqz p2, :cond_1

    .line 3016
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 3017
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_0

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    .line 3018
    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 3019
    goto :goto_1

    .line 3016
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3026
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: getRttMode rtt mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    return v0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    .line 2748
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2757
    const v0, 0x7f030005

    .local v0, "resId":I
    goto :goto_0

    .line 2753
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f030006

    .line 2754
    .restart local v0    # "resId":I
    goto :goto_0

    .line 2750
    .end local v0    # "resId":I
    :cond_1
    const v0, 0x7f030004

    .line 2751
    .restart local v0    # "resId":I
    nop

    .line 2760
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2010
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inviteParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "participant"    # Ljava/lang/String;

    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteParticipant participant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2614
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2613
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 2615
    return-void
.end method

.method private isCallMarkedUnwanted()Z
    .locals 3

    .line 2402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2403
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    .line 2404
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2405
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasUserMarkedCallUnwanted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2404
    :goto_0
    return v1
.end method

.method private isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2187
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2188
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2189
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2187
    :goto_0
    return v0
.end method

.method private isConfigEnabled(I)Z
    .locals 1
    .param p1, "resId"    # I

    .line 2883
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .line 2444
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 622
    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5
    .param p0, "srvType"    # I
    .param p1, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "allowed":Z
    if-eqz p1, :cond_2

    .line 306
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 307
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_1

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p0, :cond_1

    .line 308
    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 310
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 306
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_2
    :goto_1
    return v0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 5

    .line 2732
    const/4 v0, 0x0

    .line 2735
    .local v0, "SUPP_SVC_TOAST_CONFIG_DISABLED":I
    const/4 v1, 0x1

    .line 2737
    .local v1, "SUPP_SVC_TOAST_CONFIG_ENABLED":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2738
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2737
    const-string v3, "call.toast.supp_svc_fail"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2740
    .local v2, "toastMsgEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v3

    :cond_0
    return v4
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 3

    .line 2429
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    .line 2430
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2436
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2432
    :cond_2
    :goto_0
    return v1
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 5
    .param p0, "codec"    # Ljava/lang/String;

    .line 1648
    const-class v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v1, 0x0

    .line 1649
    .local v1, "audioQuality":I
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 1650
    return v2

    .line 1652
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "GSM_HR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "GSM_FR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "G711AB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "EVS_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "EVS_NB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "EVS_FB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "EVRC_B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "AMR_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "AMR_NB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "GSM_EFR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "QCELP13K"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "G711U"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_c
    const-string v2, "G711A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_d
    const-string v2, "G729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_e
    const-string v2, "G723"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_f
    const-string v2, "G722"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_10
    const-string v2, "EVRC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_11
    const-string v2, "EVS_SWB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_12
    const-string v2, "EVRC_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_13
    const-string v2, "EVRC_NW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1714
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1711
    :pswitch_0
    const/16 v1, 0x14

    .line 1712
    goto :goto_2

    .line 1708
    :pswitch_1
    const/16 v1, 0x13

    .line 1709
    goto :goto_2

    .line 1705
    :pswitch_2
    const/16 v1, 0x12

    .line 1706
    goto :goto_2

    .line 1702
    :pswitch_3
    const/16 v1, 0x11

    .line 1703
    goto :goto_2

    .line 1699
    :pswitch_4
    const/16 v1, 0x10

    .line 1700
    goto :goto_2

    .line 1696
    :pswitch_5
    const/16 v1, 0xf

    .line 1697
    goto :goto_2

    .line 1693
    :pswitch_6
    const/16 v1, 0xe

    .line 1694
    goto :goto_2

    .line 1690
    :pswitch_7
    const/16 v1, 0xd

    .line 1691
    goto :goto_2

    .line 1687
    :pswitch_8
    const/16 v1, 0xc

    .line 1688
    goto :goto_2

    .line 1684
    :pswitch_9
    const/16 v1, 0xb

    .line 1685
    goto :goto_2

    .line 1681
    :pswitch_a
    const/16 v1, 0xa

    .line 1682
    goto :goto_2

    .line 1678
    :pswitch_b
    const/16 v1, 0x9

    .line 1679
    goto :goto_2

    .line 1675
    :pswitch_c
    const/16 v1, 0x8

    .line 1676
    goto :goto_2

    .line 1672
    :pswitch_d
    const/4 v1, 0x2

    .line 1673
    goto :goto_2

    .line 1669
    :pswitch_e
    const/4 v1, 0x1

    .line 1670
    goto :goto_2

    .line 1666
    :pswitch_f
    const/4 v1, 0x7

    .line 1667
    goto :goto_2

    .line 1663
    :pswitch_10
    const/4 v1, 0x6

    .line 1664
    goto :goto_2

    .line 1660
    :pswitch_11
    const/4 v1, 0x5

    .line 1661
    goto :goto_2

    .line 1657
    :pswitch_12
    const/4 v1, 0x4

    .line 1658
    goto :goto_2

    .line 1654
    :pswitch_13
    const/4 v1, 0x3

    .line 1655
    nop

    .line 1717
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_13
        -0x268dd678 -> :sswitch_12
        -0x2673319f -> :sswitch_11
        0x20aaa2 -> :sswitch_10
        0x211b10 -> :sswitch_f
        0x211b11 -> :sswitch_e
        0x211b17 -> :sswitch_d
        0x4024351 -> :sswitch_c
        0x4024365 -> :sswitch_b
        0x30932dd2 -> :sswitch_a
        0x3de5f773 -> :sswitch_9
        0x734ec6ed -> :sswitch_8
        0x734ec804 -> :sswitch_7
        0x7aa095e5 -> :sswitch_6
        0x7aa17059 -> :sswitch_5
        0x7aa17151 -> :sswitch_4
        0x7aa17268 -> :sswitch_3
        0x7c462711 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 2
    .param p1, "callType"    # I

    .line 1727
    const/4 v0, 0x0

    .line 1728
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1745
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1742
    :cond_1
    const/4 v0, 0x2

    .line 1743
    goto :goto_0

    .line 1739
    :cond_2
    const/4 v0, 0x1

    .line 1740
    goto :goto_0

    .line 1736
    :cond_3
    const/4 v0, 0x3

    .line 1737
    goto :goto_0

    .line 1733
    :cond_4
    const/4 v0, 0x0

    .line 1734
    goto :goto_0

    .line 1730
    :cond_5
    const/16 v0, 0xa

    .line 1731
    nop

    .line 1748
    :goto_0
    return v0
.end method

.method private mapResponseToMode(Z)I
    .locals 0
    .param p1, "response"    # Z

    .line 3000
    return p1
.end method

.method private mapRttModeFromProfile(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 2980
    const/4 v0, 0x0

    .line 2981
    .local v0, "rttMode":I
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2986
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2983
    :cond_1
    const/4 v0, 0x0

    .line 2984
    nop

    .line 2989
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: mapRttModeFromProfile mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2990
    return v0
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3
    .param p1, "isVideoCallingEnabled"    # Z

    .line 237
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 242
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_2

    .line 243
    const-string v0, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 245
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 247
    :cond_2
    return-void
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 2719
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2721
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2723
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 722
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallTypeChanging(I)V

    .line 728
    :cond_1
    return-void
.end method

.method private maybeOverrideReason(I)I
    .locals 2
    .param p1, "reason"    # I

    .line 2409
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallMarkedUnwanted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    const/16 p1, 0x16d

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overriden Reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2413
    :cond_0
    return p1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "areStatesSame"    # Z

    .line 628
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 630
    .local v0, "isCallNotEnded":Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 635
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .line 703
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 704
    const-string v0, "merge is in progress so ignore low battery update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    return v1

    .line 708
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v0

    .line 709
    .local v0, "isLowBattery":Z
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 710
    .local v1, "hasChanged":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    if-eqz v1, :cond_2

    .line 714
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 715
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v3, "LowBattery"

    invoke-virtual {v2, v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 718
    :cond_2
    return v1
.end method

.method private maybeUpdateVoWifiCallQualityExtra(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "canNotify"    # Z

    .line 2891
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2892
    return-void

    .line 2895
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2896
    return-void

    .line 2899
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeUpdateVoWifiCallQualityExtra Quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2903
    if-eqz p2, :cond_2

    .line 2904
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 2906
    :cond_2
    return-void
.end method

.method private notifyCallDropEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "callDropReason"    # Ljava/lang/String;
    .param p2, "errorExtraCode"    # Ljava/lang/String;
    .param p3, "errorExtraReason"    # Ljava/lang/String;

    .line 3125
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "com.oneplus.telephonyoptimization"

    const-string v2, "com.oneplus.telephonyoptimization.OPCollectionDataTelephonyReceiver"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.oneplus.tracetest"

    const-string v3, "com.oneplus.tracetest.receiver.PhoneDropInfoReceiver"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.oneplus.modem.test"

    const-string v4, "com.oneplus.modem.test.receiver.PhoneDropInfoReceiver"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 3128
    .local v0, "validReceivers":[[Ljava/lang/String;
    array-length v1, v0

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v6, v0, v5

    .line 3129
    .local v6, "targetInfoArray":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v4, :cond_0

    .line 3130
    aget-object v9, v6, v2

    aget-object v10, v6, v3

    move-object v8, p0

    move-object v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->broadcastCallDropIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    .end local v6    # "targetInfoArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3133
    :cond_1
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 1082
    const-string v0, "CD-04"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/16 v0, 0x44c

    return v0

    .line 1085
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processAddParticipantResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAddParticipantResponse: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2580
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2579
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2583
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2585
    :cond_0
    return-void
.end method

.method private processAddParticipantsList([Ljava/lang/String;)V
    .locals 6
    .param p1, "participantsArr"    # [Ljava/lang/String;

    .line 2554
    const/4 v0, 0x0

    .line 2555
    .local v0, "initAdding":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    .line 2556
    .local v2, "numOfParticipants":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAddParticipantsList: no of particpants = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pending = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2557
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2556
    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2558
    if-lez v2, :cond_3

    .line 2559
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2561
    const/4 v0, 0x1

    .line 2563
    :cond_1
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 2564
    .local v4, "participant":Ljava/lang/String;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    .end local v4    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2566
    :cond_2
    if-eqz v0, :cond_3

    .line 2567
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2570
    :cond_3
    return-void
.end method

.method private processNextParticipant()V
    .locals 2

    .line 2573
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2574
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->inviteParticipant(Ljava/lang/String;)V

    .line 2576
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 741
    .local v0, "localUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 743
    const-string v5, "Codec"

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v3

    .line 742
    invoke-static {v3, v1, v2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 741
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 748
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x80

    aput v4, v3, v2

    const/16 v3, 0x01

    if-eqz v3, :cond_0

    .line 749
    const-string v3, "ro.boot.opcarrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sprint"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->mSpeechSampFreq:I

    const-string v5, "speechSampFreq"

    invoke-virtual {v3, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 754
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 757
    const-string v3, "setCapabilitiesInProfiles: setRttMode for mLocalCallProfile"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 762
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 765
    .end local v0    # "localUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v0, :cond_3

    .line 766
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 767
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_3

    .line 768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 769
    .local v0, "remoteUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 770
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 769
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 771
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 772
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 773
    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 771
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallRestrictCause(I)V

    .line 777
    const-string v1, "setCapabilitiesInProfiles: setRttMode for mRemoteCallProfile"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 782
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 786
    .end local v0    # "remoteUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_3
    return-void
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 789
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 791
    .local v0, "isLocalVideoServiceAllowed":Z
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 794
    .local v1, "isLocalVoiceServiceAllowed":Z
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    .line 801
    move v0, v2

    move v1, v2

    .line 804
    :cond_0
    const/4 v2, 0x7

    .line 805
    .local v2, "callType":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v3, :cond_1

    .line 807
    const/4 v2, 0x3

    goto :goto_0

    .line 808
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v3, :cond_2

    .line 810
    const/4 v2, 0x4

    goto :goto_0

    .line 811
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v3, :cond_3

    .line 813
    const/4 v2, 0x2

    goto :goto_0

    .line 815
    :cond_3
    const/4 v2, 0x7

    .line 817
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 819
    return-void
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 858
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 859
    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 822
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 824
    .local v0, "isRemoteVideoServiceAllowed":Z
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 827
    .local v1, "isRemoteVoiceServiceAllowed":Z
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 829
    move v0, v2

    move v1, v2

    .line 832
    :cond_0
    const/4 v2, 0x1

    .line 833
    .local v2, "callType":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 834
    const/4 v2, 0x3

    goto :goto_0

    .line 835
    :cond_1
    if-eqz v0, :cond_2

    .line 836
    const/4 v2, 0x4

    goto :goto_0

    .line 837
    :cond_2
    if-eqz v1, :cond_3

    .line 838
    const/4 v2, 0x2

    goto :goto_0

    .line 840
    :cond_3
    const/4 v2, 0x7

    .line 842
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 844
    return-void
.end method

.method private startAlert()V
    .locals 2

    .line 2831
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2832
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 2856
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2857
    return-void
.end method

.method private startBeepForAlert()V
    .locals 3

    .line 2860
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2877
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 2878
    const-string v0, "Due to network conditions, the call may be dropped"

    .line 2879
    .local v0, "TOAST_AFTER_DROPCALL":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2880
    return-void
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;
    .locals 3
    .param p0, "line"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .param p1, "profile"    # Lorg/codeaurora/ims/QImsCallProfile;

    .line 1995
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1997
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2000
    :cond_1
    const-string v1, "terminatingNumber"

    invoke-virtual {p1, v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v1

    const-string v2, "lineType"

    invoke-virtual {p1, v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2002
    return-object p1

    .line 1998
    :cond_2
    :goto_0
    return-object p1

    .line 1995
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p1
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 11
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1786
    if-nez p1, :cond_0

    .line 1787
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1788
    return-void

    .line 1791
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-nez v0, :cond_1

    .line 1792
    new-instance v0, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v0}, Lorg/codeaurora/ims/QImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1796
    :cond_1
    const/4 v0, 0x0

    .line 1797
    .local v0, "callMode":I
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_8

    .line 1799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1800
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v4, v4, v1

    .line 1801
    .local v4, "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v5, v6, :cond_2

    .line 1802
    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v5, v5, v3

    iget v0, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1805
    goto :goto_1

    .line 1799
    .end local v4    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1808
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v1

    .line 1812
    .local v1, "radioTech":I
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_7

    if-nez v1, :cond_7

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v4, :cond_7

    .line 1815
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v4

    const/16 v5, 0xd

    if-eqz v4, :cond_5

    .line 1816
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVoiceSupportedOverWifi()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1817
    move v5, v2

    goto :goto_2

    .line 1818
    :cond_4
    nop

    :goto_2
    move v1, v5

    goto :goto_4

    .line 1820
    :cond_5
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVideoSupportedOverWifi()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1821
    move v5, v2

    goto :goto_3

    .line 1822
    :cond_6
    nop

    :goto_3
    move v1, v5

    .line 1825
    :cond_7
    :goto_4
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSetCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1826
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1827
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1826
    const-string v6, "CallRadioTech"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 1830
    invoke-virtual {v5}, Lorg/codeaurora/ims/CallDetails;->isRadioTech5G()Z

    move-result v5

    .line 1829
    const-string v6, "isCall5G"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1833
    .end local v1    # "radioTech":I
    :cond_8
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    const-string v5, "oi"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    const-string v5, "cna"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 1836
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v4

    .line 1835
    const-string v5, "oir"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1837
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 1838
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v4

    .line 1837
    const-string v5, "cnap"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1839
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const-string v5, "CallSubstate"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1841
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    const-string v5, "CallEncryption"

    invoke-virtual {v1, v5, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsCallProfile :: Packing encryption="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " in mCallProfile\'s extras."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    const/4 v1, 0x1

    new-array v4, v1, [I

    const/16 v5, 0x80

    aput v5, v4, v3

    const/16 v4, 0x01

    if-eqz v4, :cond_9

    .line 1848
    const-string v4, "ro.boot.opcarrier"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sprint"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1849
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->mSpeechSampFreq:I

    const-string v6, "speechSampFreq"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1854
    :cond_9
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1855
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 1857
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1855
    const-string v6, "CallHistoryInfo"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1864
    :cond_a
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v5, "conference"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1865
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v6, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1873
    :cond_b
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isConfSupportIndicated()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1874
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1876
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1877
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isVideoConfSupported()Z

    move-result v5

    goto :goto_5

    :cond_c
    move v5, v1

    .line 1874
    :goto_5
    const-string v6, "conference_avail"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1880
    :cond_d
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1881
    :cond_e
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    const-string v6, "SessionModificationCause"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1885
    :cond_f
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 1886
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v6, "phoneId"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1889
    const/4 v4, 0x1

    .line 1890
    .local v4, "callType":I
    const/4 v5, -0x1

    .line 1891
    .local v5, "videoDirection":I
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eqz v6, :cond_15

    if-eq v6, v1, :cond_14

    const/4 v7, 0x2

    if-eq v6, v7, :cond_13

    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    const/4 v7, 0x4

    if-eq v6, v7, :cond_11

    const/16 v7, 0xa

    if-eq v6, v7, :cond_10

    goto :goto_6

    .line 1893
    :cond_10
    const/4 v4, 0x1

    .line 1894
    const/4 v5, -0x1

    .line 1895
    goto :goto_6

    .line 1914
    :cond_11
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v6}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v4

    .line 1915
    const/4 v5, 0x0

    goto :goto_6

    .line 1901
    :cond_12
    const/4 v4, 0x4

    .line 1902
    const/4 v5, 0x3

    .line 1903
    goto :goto_6

    .line 1909
    :cond_13
    const/4 v4, 0x6

    .line 1910
    const/4 v5, 0x1

    .line 1911
    goto :goto_6

    .line 1905
    :cond_14
    const/4 v4, 0x5

    .line 1906
    const/4 v5, 0x2

    .line 1907
    goto :goto_6

    .line 1897
    :cond_15
    const/4 v4, 0x2

    .line 1898
    const/4 v5, -0x1

    .line 1899
    nop

    .line 1919
    :goto_6
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v7, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v7, v1, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1922
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v6}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    .line 1923
    .local v6, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 1924
    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v7

    .line 1925
    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v8

    .line 1926
    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v9

    .line 1928
    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v10

    .line 1923
    invoke-static {v7, v8, v9, v5, v10}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1933
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateImsCallProfile: dc.callDetails.rttMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v8, v8, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1935
    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    if-eqz v7, :cond_17

    if-eq v7, v1, :cond_16

    goto :goto_7

    .line 1940
    :cond_16
    invoke-virtual {v6, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_7

    .line 1937
    :cond_17
    invoke-virtual {v6, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1938
    nop

    .line 1943
    :goto_7
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1954
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v1

    if-ne v1, v2, :cond_18

    .line 1955
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-direct {p0, v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    .line 1959
    :cond_18
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v1

    .line 1960
    .local v1, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v1, :cond_19

    .line 1961
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallUtils;->toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsCallProfile :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1966
    :cond_19
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1968
    iget-boolean v3, p1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    const-string v7, "incomingTir"

    invoke-virtual {v2, v7, v3}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1970
    return-void
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 348
    const/4 v0, 0x1

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v1

    .line 353
    .local v1, "changedProperties":I
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_2

    .line 354
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 355
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMultipartyStateChanged(Z)V

    .line 358
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_2

    .line 361
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 366
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 368
    .end local v1    # "changedProperties":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalDc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    return v0
.end method

.method private updateSetCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1973
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_4

    .line 1977
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVoiceSupportedOverWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    goto :goto_0

    .line 1981
    :cond_1
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOLTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    goto :goto_0

    .line 1984
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVideoSupportedOverWifi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1985
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VIWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    goto :goto_0

    .line 1987
    :cond_3
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VILTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallFailType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    .line 1991
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "presentation"    # I
    .param p3, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2304
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: rttMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapRttModeFromProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIR presentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2309
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 2310
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapTirPresentationToIpPresentation(I)I

    move-result v3

    .line 2311
    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapRttModeFromProfile(I)I

    move-result v4

    .line 2308
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    .line 2312
    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2289
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: rttMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapRttModeFromProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2292
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2293
    return-void
.end method

.method public close()V
    .locals 2

    .line 1358
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1360
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1362
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 2348
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2350
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 2351
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2350
    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 2352
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2549
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2551
    :cond_0
    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .line 1489
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 1491
    :cond_0
    const/4 v0, 0x3

    .line 1492
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1493
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1495
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1370
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1401
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1518
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1519
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .line 2692
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2693
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object v0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1504
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1507
    :cond_0
    const-string v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1523
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1524
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 3119
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object v0
.end method

.method public bridge synthetic getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 2

    .line 2666
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2668
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 2669
    const-string v0, "getImsVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2670
    return-object v1

    .line 2672
    :cond_1
    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 2

    .line 1477
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 1479
    :cond_0
    const/16 v0, 0xa

    .line 1480
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 1482
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v1, :cond_2

    .line 1483
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1485
    :cond_2
    :goto_0
    return v0
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .line 1461
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1463
    :cond_0
    const/4 v0, 0x0

    .line 1464
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    .line 1465
    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 1466
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1467
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1469
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1411
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .line 1380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1381
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    :cond_1
    return v1
.end method

.method public getMergeStatus()I
    .locals 1

    .line 3004
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMergeStatus:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1473
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1431
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1433
    :cond_0
    const/4 v0, 0x0

    .line 1435
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v1, :cond_1

    .line 1436
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1438
    :cond_1
    const-string v1, "Call Profile null! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    :goto_0
    return-object v0
.end method

.method public getRadioTechFromCallMode(I)I
    .locals 1
    .param p1, "callMode"    # I

    .line 1766
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1776
    const/4 v0, 0x0

    .local v0, "radioTech":I
    goto :goto_0

    .line 1773
    .end local v0    # "radioTech":I
    :pswitch_0
    const/16 v0, 0x12

    .line 1774
    .restart local v0    # "radioTech":I
    goto :goto_0

    .line 1769
    .end local v0    # "radioTech":I
    :cond_0
    :pswitch_1
    const/16 v0, 0xd

    .line 1770
    .restart local v0    # "radioTech":I
    nop

    .line 1778
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1421
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1422
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1450
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1451
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1029
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    .line 1030
    .local v0, "error":I
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v1

    .line 1031
    .local v1, "rilSrcTech":I
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v2

    .line 1033
    .local v2, "rilTargetTech":I
    if-eqz p1, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled hoType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMayHandover(II)V

    .line 1072
    goto :goto_0

    .line 1063
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1064
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1, v2, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1067
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mUstImsNotifyer:Lcom/oneplus/operator/ust/UstImsNotifyer;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/oneplus/operator/ust/UstImsNotifyer;->notifyCallDrop(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1069
    goto :goto_0

    .line 1050
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    if-ne p4, v3, :cond_4

    .line 1052
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v6, "handoverInfo"

    invoke-virtual {v5, v6, v3}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1055
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1056
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1, v2, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1059
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mUstImsNotifyer:Lcom/oneplus/operator/ust/UstImsNotifyer;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/oneplus/operator/ust/UstImsNotifyer;->notifyCallDrop(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1061
    goto :goto_0

    .line 1037
    :cond_5
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v1, v2, v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1043
    const/16 v5, 0x12

    if-ne v1, v5, :cond_7

    const/16 v5, 0xd

    if-ne v2, v5, :cond_7

    .line 1045
    invoke-direct {p0, v4, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 1035
    :cond_6
    nop

    .line 1076
    :cond_7
    :goto_0
    return-void
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "sipErrorCode":I
    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    const/16 v2, 0x204

    if-eq v1, v2, :cond_2

    const/16 v2, 0x207

    if-eq v1, v2, :cond_1

    const/16 v2, 0x208

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 999
    :pswitch_0
    const/16 v0, 0x244

    .line 1000
    goto :goto_0

    .line 996
    :pswitch_1
    const/16 v0, 0x201

    .line 997
    goto :goto_0

    .line 993
    :pswitch_2
    const/16 v0, 0x1f9

    .line 994
    goto :goto_0

    .line 990
    :pswitch_3
    const/16 v0, 0x1f7

    .line 991
    goto :goto_0

    .line 987
    :pswitch_4
    const/16 v0, 0x1f6

    .line 988
    goto :goto_0

    .line 984
    :pswitch_5
    const/16 v0, 0x1f5

    .line 985
    goto :goto_0

    .line 981
    :pswitch_6
    const/16 v0, 0x1f4

    .line 982
    goto :goto_0

    .line 978
    :cond_0
    const/16 v0, 0x1e0

    .line 979
    goto :goto_0

    .line 975
    :cond_1
    const/16 v0, 0x198

    .line 976
    goto :goto_0

    .line 972
    :cond_2
    const/16 v0, 0x193

    .line 973
    nop

    .line 1004
    :goto_0
    if-eqz v0, :cond_3

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry Error Notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalCallInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "additionalCallInfo":Ljava/lang/String;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 1009
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v3, "AdditionalCallInfo"

    invoke-virtual {v2, v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1012
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f010000

    .line 1013
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1014
    .local v2, "displayCsRetryToast":Z
    if-eqz v2, :cond_3

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1020
    .end local v1    # "additionalCallInfo":Ljava/lang/String;
    .end local v2    # "displayCsRetryToast":Z
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x213
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1391
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1392
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public hasUserMarkedCallUnwanted()Z
    .locals 3

    .line 2392
    const/4 v0, 0x0

    .line 2393
    .local v0, "defaultVal":I
    const-string v1, "persist.vendor.radio.debug.mark_unwanted_call"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2395
    .local v1, "ret":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2482
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2484
    :cond_0
    const-string v0, "hold requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2487
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    const-string v0, "hold : mDc is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2488
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    .line 2491
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2595
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2597
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 2601
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2602
    return-void

    .line 2598
    :cond_2
    :goto_0
    const-string v0, "inviteParticipants: empty participants"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2599
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 2338
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2339
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConfInProgress()Z
    .locals 1

    .line 2019
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2020
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method isImsCallSessionAlive()Z
    .locals 2

    .line 1297
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1545
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1547
    :cond_0
    const/4 v0, 0x0

    .line 1548
    .local v0, "isInCall":Z
    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1555
    :pswitch_0
    const/4 v0, 0x1

    .line 1558
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1533
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1534
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v0, :cond_3

    .line 1536
    const-string v2, "conference"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1534
    :goto_0
    return v1
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1499
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1500
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    :cond_1
    return v1
.end method

.method public maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 640
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 642
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result v1

    return v1
.end method

.method public merge()V
    .locals 1

    .line 2518
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2521
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 2522
    const-string v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2523
    return-void

    .line 2528
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2529
    return-void
.end method

.method public muteStateReporting()V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting muted! session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 375
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .line 2676
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2678
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 2679
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 2683
    :cond_1
    return-void
.end method

.method public notifyReceivedRttMessage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 3053
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3054
    const-string v0, "RTT: notifyReceivedRttMessage not allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3055
    return-void

    .line 3058
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 3060
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3061
    const-string v1, "notifyReceivedRttMessage rtt msg null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3062
    return-void

    .line 3065
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 3066
    const-string v1, "notifyReceivedRttMessage ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3067
    return-void

    .line 3070
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyReceivedRttMessage rttMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3071
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 3072
    return-void
.end method

.method public notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 3036
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3038
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 3039
    const-string v0, "RTT: notifyRttModifyRequest ListenerProxy null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3040
    return-void

    .line 3043
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: notifyRttModifyRequest rttMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3045
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 3046
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3048
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3049
    return-void
.end method

.method public notifyRttModifyResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3076
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3078
    :cond_0
    const/4 v0, 0x2

    .line 3080
    .local v0, "status":I
    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 3081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: modify request exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3082
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 3084
    :cond_1
    const/4 v0, 0x1

    .line 3087
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 3088
    const-string v1, "notifyRttModifyResponse ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3089
    return-void

    .line 3092
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyRttModifyResponse status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3093
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyResponseReceived(I)V

    .line 3094
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTtyModeReceived(I)V

    goto :goto_0

    .line 964
    :cond_1
    const-string v0, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    :goto_0
    return-void
.end method

.method public notifyVoiceInfoChanged(I)V
    .locals 3
    .param p1, "voiceInfo"    # I

    .line 3099
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3105
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 3106
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 3108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyVoiceInfoChanged voiceInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3109
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3110
    return-void

    .line 3100
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_2
    :goto_1
    const-string v0, "notifyVoiceInfoChanged Session invalid/not active/mCallbackHandler null Return"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3102
    return-void
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 291
    const-string v0, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 295
    return-void
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2321
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2326
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 2327
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2328
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2329
    const/16 p1, 0x1f9

    goto :goto_0

    .line 2331
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2333
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    .line 2334
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2333
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2335
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2625
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2626
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2628
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x1f5

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    .line 2629
    invoke-virtual {v0, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2628
    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2630
    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1579
    if-eqz p1, :cond_0

    .line 1580
    const-string v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1582
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 1581
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 1584
    :cond_0
    const-string v0, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2501
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2503
    :cond_0
    const-string v0, "resume requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    const-string v0, "hold : mDc is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2507
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    .line 2510
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 4
    .param p1, "videoState"    # I

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePendingCall VideoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2208
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    .line 2209
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2208
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2210
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2211
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2641
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2642
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(CLandroid/os/Message;)V

    .line 2643
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 2924
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2925
    const-string v0, "RTT: sendRttMessage not allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2926
    return-void

    .line 2929
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 2930
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2934
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2937
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2941
    .local v0, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: sendRttModifyRequest mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 2945
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2946
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mRttMode is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2949
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/ims/CallModify;

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-direct {v3, v0, v4}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 2951
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 5
    .param p1, "response"    # Z

    .line 2959
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2961
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2963
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 2964
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 2965
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 2967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: sendRttModifyResponse response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2968
    iget-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapResponseToMode(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2970
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 2972
    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 396
    if-eqz p1, :cond_0

    .line 397
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    const-string v1, "tirConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 400
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2686
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2688
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2689
    return-void
.end method

.method public setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 404
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "EmergencyServiceCategory"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "emergencyServiceCategory":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency service category:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    return-void

    .line 405
    .end local v0    # "emergencyServiceCategory":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "Driver call or call Details is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public setImsVideoCallProviderImpl(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 0
    .param p1, "videoCallProvider"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 3114
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 3115
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 1567
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1569
    :cond_0
    return-void
.end method

.method public setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 2027
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2028
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 2029
    return-void
.end method

.method public setScreenShareListener(Lorg/codeaurora/ims/internal/IImsScreenShareListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    .line 674
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    .line 675
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 25
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2061
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2063
    :cond_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2064
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2066
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 2067
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 2068
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2070
    const/4 v3, 0x1

    iput v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 2071
    move-object/from16 v12, p1

    iput-object v12, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2075
    const-string v4, "oir"

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v13

    .line 2076
    .local v13, "clir":I
    const/4 v14, 0x3

    .line 2077
    .local v14, "domain":I
    const-string v5, "persist.dbg.call_encrypt_ovr"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    .line 2079
    .local v5, "isEncrypted":Z
    :goto_0
    const/4 v7, 0x0

    .line 2080
    .local v7, "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getProprietaryCallExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 2081
    .local v15, "callExtras":Landroid/os/Bundle;
    if-nez v5, :cond_4

    .line 2082
    if-eqz v15, :cond_4

    .line 2083
    nop

    .line 2084
    const-string v8, "CallEncryption"

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2085
    invoke-virtual {v15, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2087
    const-string v8, "RetryCallFailRadioTech"

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2088
    nop

    .line 2089
    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2090
    .local v9, "radioTech":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioTech = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2091
    nop

    .line 2092
    invoke-static {v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallModeFromRadioTech(I)I

    move-result v10

    .line 2091
    invoke-virtual {v15, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2095
    .end local v9    # "radioTech":I
    :cond_2
    sget-object v8, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 2097
    .local v8, "callComposerExtra":Landroid/os/Bundle;
    if-eqz v8, :cond_3

    .line 2098
    invoke-static {v8}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->fromBundle(Landroid/os/Bundle;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v7

    .line 2099
    sget-object v9, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move/from16 v16, v5

    move-object/from16 v17, v7

    goto :goto_1

    .line 2097
    :cond_3
    move/from16 v16, v5

    move-object/from16 v17, v7

    goto :goto_1

    .line 2105
    .end local v8    # "callComposerExtra":Landroid/os/Bundle;
    :cond_4
    move/from16 v16, v5

    move-object/from16 v17, v7

    .end local v5    # "isEncrypted":Z
    .end local v7    # "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    .local v16, "isEncrypted":Z
    .local v17, "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v11

    .line 2106
    .local v11, "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiIdentity Line info in Dial Request :: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    new-instance v5, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v7

    invoke-direct {v0, v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v7, v14, v8, v11}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    move-object v10, v5

    .line 2119
    .local v10, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {v0, v15, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V

    .line 2121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RTT: start rtt mode = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    invoke-virtual {v10, v5}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2123
    const-string v5, "CallPull"

    invoke-virtual {v1, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v10, v5}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 2125
    invoke-direct {v0, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v18

    .line 2126
    .local v18, "carrierOneDial":Z
    if-eqz v18, :cond_5

    .line 2127
    iget-object v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 2128
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v6

    .line 2127
    invoke-virtual {v5, v4, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2129
    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 2130
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v5

    .line 2129
    const-string v6, "cnap"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2137
    :cond_5
    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v6, "phoneId"

    invoke-virtual {v4, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2140
    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v5}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2141
    if-eqz v18, :cond_6

    iget-boolean v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v4, :cond_6

    .line 2144
    const-string v3, "defer low battery video call dial request"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2145
    return-void

    .line 2148
    :cond_6
    invoke-direct {v0, v10}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2149
    const/16 v3, 0x70

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2150
    return-void

    .line 2153
    :cond_7
    const v4, 0x7f010004

    invoke-direct {v0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v10, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2154
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2155
    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2156
    const/16 v3, 0x96

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2157
    return-void

    .line 2160
    :cond_8
    const/4 v4, 0x0

    .line 2161
    .local v4, "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 2162
    new-instance v5, Lorg/codeaurora/ims/EmergencyCallInfo;

    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v20

    .line 2164
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v21

    .line 2165
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v22

    .line 2166
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v23

    .line 2167
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v24

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v24}, Lorg/codeaurora/ims/EmergencyCallInfo;-><init>(ILjava/util/List;IZZ)V

    move-object v4, v5

    move-object/from16 v19, v4

    goto :goto_2

    .line 2161
    :cond_9
    move-object/from16 v19, v4

    .line 2169
    .end local v4    # "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    .local v19, "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    :goto_2
    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2170
    invoke-virtual {v5, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2169
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move v7, v13

    move-object v8, v10

    move/from16 v9, v16

    move-object/from16 v20, v10

    .end local v10    # "details":Lorg/codeaurora/ims/CallDetails;
    .local v20, "details":Lorg/codeaurora/ims/CallDetails;
    move-object/from16 v10, v17

    move-object/from16 v21, v11

    .end local v11    # "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .local v21, "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Landroid/os/Message;)V

    .line 2171
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 12
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2247
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2249
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/QImsCallProfile;->updateProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2250
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 2251
    const-string v1, ""

    .line 2252
    .local v1, "callee":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2253
    .local v2, "i":I
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 2254
    .local v5, "participant":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 2255
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2256
    goto :goto_1

    .line 2258
    :cond_1
    array-length v6, p1

    if-ne v2, v6, :cond_2

    .line 2259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2261
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2253
    .end local v5    # "participant":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2264
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2265
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2267
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startConference mCallee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2270
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2271
    .local v3, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 2272
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 2271
    const-string v5, "isConferenceUri"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    invoke-static {v3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    .line 2274
    .local v4, "mMoExtras":[Ljava/lang/String;
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 2275
    new-instance v9, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v9, v5, v6, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2277
    .local v9, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2278
    invoke-virtual {v11, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2277
    invoke-virtual/range {v5 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 2279
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 2653
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2654
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(CLandroid/os/Message;)V

    .line 2655
    return-void
.end method

.method public startScreenShare(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenShare: width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setSharedDisplayParams(II)V

    .line 682
    :cond_0
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 2661
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2662
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(Landroid/os/Message;)V

    .line 2663
    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 685
    const-string v0, "stopScreenShare"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->stopScreenShare()V

    .line 689
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2453
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2454
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate: fail deferred low battery video call with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2458
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2459
    return-void

    .line 2461
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2465
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 2466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    goto :goto_0

    .line 2468
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2471
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    .line 2472
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2471
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2473
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 2770
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 7
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 2375
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2377
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2378
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2379
    .local v5, "otherCallId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    .line 2380
    invoke-virtual {v0, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2379
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2382
    .end local v5    # "otherCallId":I
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException caught = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 2385
    :goto_1
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 2362
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2363
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 2364
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    nop

    .line 2365
    .local v3, "type":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    .line 2366
    invoke-virtual {v0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2365
    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2367
    return-void
.end method

.method public unMuteStateReporting()V
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting unmuted. session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 383
    :cond_0
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2539
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2540
    :cond_0
    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 9
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 429
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 430
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 431
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 437
    :cond_1
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v2, "incomingConference"

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 442
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "oem_join_user_plan_settings"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 544
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 546
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 547
    invoke-static {v0, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    const/16 v0, 0x70

    goto :goto_0

    .line 549
    :cond_3
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    :goto_0
    nop

    .line 550
    .local v0, "errorCode":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v5, "CallFailExtraCode"

    invoke-virtual {v4, v5, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 552
    const/16 v4, 0x95

    if-ne v0, v4, :cond_4

    .line 553
    const-string v4, "Call was ended as LTE to 3G/2G handover was not feasible."

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sip callFailCause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v4, :cond_8

    .line 557
    if-eqz p1, :cond_9

    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_9

    .line 560
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v4, v4, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/16 v5, 0x1fe

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v6, :cond_5

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v6, :cond_6

    :cond_5
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 562
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiEndpointFailCause(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 563
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 565
    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 566
    invoke-virtual {v8}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 563
    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 567
    :cond_6
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    const/16 v6, 0x1f5

    if-ne v4, v6, :cond_7

    .line 570
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 572
    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 573
    invoke-virtual {v8}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 570
    invoke-virtual {v4, v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 575
    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 577
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mUstImsNotifyer:Lcom/oneplus/operator/ust/UstImsNotifyer;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4, v5}, Lcom/oneplus/operator/ust/UstImsNotifyer;->notifyCallDrop(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 581
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 582
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    .line 581
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 582
    invoke-virtual {v6}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    .line 581
    invoke-direct {p0, v4, v5, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallDropEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_8
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_9

    .line 588
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    iget v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 590
    invoke-virtual {v7}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v8}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 588
    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 595
    :cond_9
    :goto_1
    const-string v4, "persist.vendor.radio.test_mdm_call_drop"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 596
    .local v4, "testProp":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call drop MDM testing property = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    if-ne v4, v3, :cond_a

    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unspecified"

    invoke-direct {p0, v5, v6, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallDropEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_a
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 605
    .local v2, "userPlanSettings":I
    if-ne v2, v3, :cond_b

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "END"

    invoke-direct {p0, v7, v5, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->broadcastCallCountAndDurationIntent(Ljava/lang/String;J)V

    .line 610
    :cond_b
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_5

    .line 538
    .end local v0    # "errorCode":I
    .end local v2    # "userPlanSettings":I
    .end local v4    # "testProp":I
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MT:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    .line 539
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSetCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 541
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 542
    goto/16 :goto_5

    .line 516
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 517
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_c

    .line 518
    const-string v0, "MO Alerting call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 521
    :cond_c
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_e

    .line 523
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 524
    const/4 v0, 0x3

    .line 525
    .local v0, "audioDirection":I
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-ne v2, v3, :cond_d

    .line 526
    const/4 v0, 0x0

    .line 528
    :cond_d
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 530
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v4, :cond_e

    .line 531
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v4, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 534
    .end local v0    # "audioDirection":I
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_e
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 535
    goto/16 :goto_5

    .line 501
    :pswitch_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_f

    .line 502
    const-string v0, "MO Dialing call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 504
    const/4 v0, 0x3

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 507
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_f

    .line 508
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 511
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_f
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    .line 512
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 513
    goto/16 :goto_5

    .line 493
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_18

    .line 494
    const-string v0, "Call being held."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_18

    .line 496
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_5

    .line 444
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v4, 0x4

    if-nez v0, :cond_10

    .line 446
    const-string v0, "Phantom call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 448
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 449
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_18

    .line 450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_5

    .line 452
    :cond_10
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_13

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_13

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v5, :cond_13

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v5, :cond_11

    goto :goto_2

    .line 481
    :cond_11
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_12

    .line 482
    const-string v0, "Call being resumed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 485
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_18

    .line 486
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_5

    .line 489
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call resumed skipped, conf status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    goto :goto_5

    .line 459
    :cond_13
    :goto_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "userPlanSettings":I
    if-ne v0, v3, :cond_16

    .line 461
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v5, :cond_15

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v5, :cond_14

    goto :goto_3

    .line 466
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "MT"

    invoke-direct {p0, v2, v5, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->broadcastCallCountAndDurationIntent(Ljava/lang/String;J)V

    .line 467
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MT:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    goto :goto_4

    .line 463
    :cond_15
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "MO"

    invoke-direct {p0, v2, v5, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->broadcastCallCountAndDurationIntent(Ljava/lang/String;J)V

    .line 464
    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallStartType:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    .line 472
    :cond_16
    :goto_4
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 473
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v4, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 475
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 476
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_17

    .line 477
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 479
    .end local v0    # "userPlanSettings":I
    :cond_17
    nop

    .line 614
    :cond_18
    :goto_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_19

    move v1, v3

    :cond_19
    move v0, v1

    .line 616
    .local v0, "areStatesSame":Z
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 617
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    .line 619
    :cond_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 852
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 853
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 855
    :cond_1
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .line 2698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2699
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2701
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 2702
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 2703
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 2704
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2705
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2706
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 2707
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_2

    .line 2708
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2712
    :cond_2
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 731
    const-string v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 736
    :cond_0
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMergeStatus:I

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->updateMergeStatus(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOrientationMode: orientation mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v1, "OrientationMode"

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 648
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 649
    const-string v0, "updateOrientationMode: mDc is null and in dialing state "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 653
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientationMode: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public updateRecordingSurface(Landroid/view/Surface;II)V
    .locals 3
    .param p1, "recordingSurface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingSurface: recording surface - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    .local v0, "isValidCall":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    if-nez v1, :cond_1

    goto :goto_2

    .line 666
    :cond_1
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/codeaurora/ims/internal/IImsScreenShareListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    goto :goto_1

    .line 668
    :catchall_0
    move-exception v1

    .line 669
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onRecordingSurfaceChanged exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 661
    :cond_2
    :goto_2
    const-string v1, "updateRecordingSurface: is not valid call or mScreenSharelistener is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 9
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 881
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 882
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_1

    .line 883
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "isChanged":Z
    iget v2, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 887
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 888
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget v3, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v4, 0x2

    const/4 v5, 0x7

    if-eq v3, v4, :cond_4

    const/4 v1, 0x3

    if-eq v3, v1, :cond_2

    .line 938
    const-string v1, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_0

    .line 917
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v1

    if-nez v1, :cond_3

    .line 919
    nop

    .line 921
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 922
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 923
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    .line 924
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v6

    .line 920
    invoke-static {v1, v3, v4, v6}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    .line 919
    invoke-virtual {v2, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 926
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 927
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 929
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 930
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 932
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 933
    const/4 v0, 0x1

    goto :goto_0

    .line 891
    :cond_4
    if-eqz p2, :cond_5

    .line 892
    nop

    .line 894
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v3

    const/4 v4, 0x0

    .line 896
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v6

    .line 897
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v7

    .line 898
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v8

    .line 893
    invoke-static {v3, v4, v6, v7, v8}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 892
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 900
    :cond_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 901
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 903
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 904
    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v3

    if-eq v3, v5, :cond_6

    .line 910
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v4, v1, v5}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 912
    const/4 v0, 0x1

    .line 943
    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 944
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 947
    .end local v0    # "isChanged":Z
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_7
    :goto_1
    return-void
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 692
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f010005

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dataUsage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 697
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 698
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .line 2914
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_0

    .line 2915
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 2916
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 2918
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2920
    :goto_0
    return-void
.end method
