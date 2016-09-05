.class final Lcom/samsung/privilege/util/DialogNotification$4;
.super Ljava/lang/Object;
.source "DialogNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 160
    invoke-static {}, Lcom/samsung/privilege/util/DialogNotification;->i()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 161
    invoke-static {}, Lcom/bzbs/event/NotiEvents;->b()V

    .line 162
    return-void
.end method
