.class Lorg/codeaurora/ims/ImsSubController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 563
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 565
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->access$000(Lorg/codeaurora/ims/ImsSubController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "mBroadcastReceiver onReceive, returning as is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    return-void

    .line 569
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    const-string v1, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    const/4 v1, -0x1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 574
    .local v1, "ddsSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got ACTION_DDS_SWITCH_DONE, new DDS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsSubController;->access$800(Lorg/codeaurora/ims/ImsSubController;I)V

    .end local v1    # "ddsSubId":I
    goto :goto_0

    .line 577
    :cond_1
    const-string v1, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSubController;->access$900(Lorg/codeaurora/ims/ImsSubController;)V

    goto :goto_1

    .line 577
    :cond_2
    :goto_0
    nop

    .line 580
    :goto_1
    return-void
.end method
