.class Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$1;
.super Ljava/lang/Object;
.source "ShowCodeBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->dismiss()V

    .line 180
    return-void
.end method
