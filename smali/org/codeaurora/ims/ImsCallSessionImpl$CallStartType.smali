.class final enum Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;
.super Ljava/lang/Enum;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallStartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

.field public static final enum CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

.field public static final enum CALLSTARTTYPE_MT:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    const-string v1, "CALLSTARTTYPE_MO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    .line 107
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    const-string v1, "CALLSTARTTYPE_MT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MT:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    .line 105
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    sget-object v4, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->CALLSTARTTYPE_MO:Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->$VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 105
    const-class v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;
    .locals 1

    .line 105
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->$VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallStartType;

    return-object v0
.end method
