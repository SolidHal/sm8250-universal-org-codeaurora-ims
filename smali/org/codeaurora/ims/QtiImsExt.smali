.class public Lorg/codeaurora/ims/QtiImsExt;
.super Lorg/codeaurora/ims/QtiImsExtBase;
.source "QtiImsExt.java"


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSub"    # [Lorg/codeaurora/ims/ImsServiceSub;

    .line 29
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtBase;-><init>()V

    .line 23
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 24
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PHONE_STATE:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 32
    return-void
.end method


# virtual methods
.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getCallForwardUncondTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 49
    return-void
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 105
    return-void
.end method

.method protected onGetImsFeatureState(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 181
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getImsFeatureState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsFeatureState()I

    move-result v0

    return v0
.end method

.method protected onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 3
    .param p1, "phoneId"    # I

    .line 167
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetMultiIdentityInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    move-result-object v0

    .line 169
    .local v0, "v":Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getRcsAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 144
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onGetScreenShareController(I)Lorg/codeaurora/ims/internal/IImsScreenShareController;
    .locals 3
    .param p1, "phoneId"    # I

    .line 174
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetScreenShareController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    move-result-object v0

    .line 176
    .local v0, "v":Lorg/codeaurora/ims/ImsScreenShareControllerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsScreenShareControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsScreenShareController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 115
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 118
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onIsCallComposerEnabled(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 193
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "onIsCallComposerEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isCallComposerSupported()Z

    move-result v0

    return v0
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "querySsacStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 79
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 99
    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVopsStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 73
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "registerForParticipantStatusInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 86
    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 53
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "resumePendingCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->resumePendingCall(I)V

    .line 55
    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "sendCancelModifyCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 61
    return-void
.end method

.method protected onSetAnswerExtras(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "onSetAnswerExtras"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setAnswerExtras(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 38
    move-object v0, p0

    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setCallForwardUncondTimer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v2, v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsServiceSub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 41
    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 111
    return-void
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setRcsAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onSetUssdInfoListener(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setUssdInfoListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 67
    return-void
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 93
    return-void
.end method
