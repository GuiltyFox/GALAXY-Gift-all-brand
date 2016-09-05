.class Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;
.super Ljava/lang/Object;
.source "AlertUpdateProfileBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->f()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->dismiss()V

    .line 203
    return-void
.end method
