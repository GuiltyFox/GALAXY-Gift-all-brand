.class Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$2;
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
    .line 206
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/AlertUpdateProfileBlurDialog;->dismiss()V

    .line 210
    return-void
.end method
