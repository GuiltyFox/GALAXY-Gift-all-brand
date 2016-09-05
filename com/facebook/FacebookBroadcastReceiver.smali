.class public Lcom/facebook/FacebookBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FacebookBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailedAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 74
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 41
    const-string/jumbo v0, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 46
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/FacebookBroadcastReceiver;->onFailedAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    :cond_1f
    :goto_1f
    return-void

    .line 49
    :cond_20
    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/FacebookBroadcastReceiver;->onSuccessfulAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1f
.end method

.method protected onSuccessfulAppCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 63
    return-void
.end method
