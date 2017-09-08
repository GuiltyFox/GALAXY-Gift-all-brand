.class final Lcom/samsung/privilege/util/DialogSerialGift$11;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$11;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$11;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 468
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$11;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 470
    :try_start_f
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->b()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 472
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->b()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 473
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_2d

    .line 479
    :cond_2c
    :goto_2c
    return-void

    .line 475
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method
