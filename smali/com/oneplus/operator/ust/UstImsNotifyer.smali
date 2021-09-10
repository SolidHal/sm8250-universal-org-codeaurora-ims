.class public Lcom/oneplus/operator/ust/UstImsNotifyer;
.super Ljava/lang/Object;
.source "UstImsNotifyer.java"


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.oneplus.ust.action.CALLDROP"

.field private static final TAG:Ljava/lang/String;

.field public static final callDropList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    const-class v0, Lcom/oneplus/operator/ust/UstImsNotifyer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->TAG:Ljava/lang/String;

    .line 14
    const-string v1, "CD-01"

    const-string v2, "CD-11"

    const-string v3, "CD-02"

    const-string v4, "CD-021"

    const-string v5, "CD-03"

    const-string v6, "CD-04"

    const-string v7, "CD-05"

    const-string v8, "CD-06"

    const-string v9, "CD"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->callDropList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oneplus/operator/ust/UstImsNotifyer;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private broadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.ust.action.CALLDROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/oneplus/operator/ust/UstImsNotifyer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method public notifyCallDrop(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 25
    if-nez p1, :cond_0

    .line 26
    sget-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->TAG:Ljava/lang/String;

    const-string v1, "ImsReasonInfo is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive ImsReasonInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->callDropList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 32
    .local v3, "code":Ljava/lang/String;
    iget-object v4, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    sget-object v0, Lcom/oneplus/operator/ust/UstImsNotifyer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify call drop. Message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/operator/ust/UstImsNotifyer;->broadcast(Ljava/lang/String;)V

    .line 35
    goto :goto_1

    .line 31
    .end local v3    # "code":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method public notifyCallDropTest()V
    .locals 3

    .line 48
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    const-string v2, "CD-01 Test Test Test"

    invoke-direct {v0, v1, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 49
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p0, v0}, Lcom/oneplus/operator/ust/UstImsNotifyer;->notifyCallDrop(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 50
    return-void
.end method
