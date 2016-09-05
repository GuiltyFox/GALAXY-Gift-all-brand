.class Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$1;
.super Ljava/lang/Object;
.source "ConditionDrawsBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog$1;->a:Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ConditionDrawsBlurDialog;->dismiss()V

    .line 111
    return-void
.end method
