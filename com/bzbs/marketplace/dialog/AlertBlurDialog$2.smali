.class Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;
.super Ljava/lang/Object;
.source "AlertBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 219
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transfer_point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 220
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->a(Lcom/bzbs/marketplace/dialog/AlertBlurDialog;Z)V

    .line 228
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/AlertBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->dismiss()V

    .line 229
    return-void

    .line 221
    :cond_19
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 222
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/SplashActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const v0, 0x14008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->i()Landroid/content/Context;

    move-result-object v0

    :goto_41
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    :cond_45
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->h()Landroid/app/Activity;

    move-result-object v0

    goto :goto_41

    .line 225
    :cond_4a
    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertBlurDialog;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "noti_msg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_13
.end method
