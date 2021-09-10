.class final enum Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;
.super Ljava/lang/Enum;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallFailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

.field public static final enum CALLFAILTYPE_VILTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

.field public static final enum CALLFAILTYPE_VIWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

.field public static final enum CALLFAILTYPE_VOLTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

.field public static final enum CALLFAILTYPE_VOWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 111
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    const-string v1, "CALLFAILTYPE_VOLTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOLTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    .line 112
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    const-string v1, "CALLFAILTYPE_VOWIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    const-string v1, "CALLFAILTYPE_VILTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VILTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    const-string v1, "CALLFAILTYPE_VIWIFI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VIWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    .line 110
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    sget-object v6, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOLTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    aput-object v6, v1, v2

    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VOWIFI:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->CALLFAILTYPE_VILTE:Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->$VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;
    .locals 1

    .line 110
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->$VALUES:[Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsCallSessionImpl$CallFailType;

    return-object v0
.end method
