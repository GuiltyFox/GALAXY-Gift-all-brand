.class Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$1;
.super Ljava/lang/Object;
.source "SentByPostBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/SentByPostBlurDialog;->dismiss()V

    .line 95
    return-void
.end method
