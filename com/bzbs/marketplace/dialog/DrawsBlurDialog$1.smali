.class Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$1;
.super Ljava/lang/Object;
.source "DrawsBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/DrawsBlurDialog;->dismiss()V

    .line 99
    return-void
.end method
