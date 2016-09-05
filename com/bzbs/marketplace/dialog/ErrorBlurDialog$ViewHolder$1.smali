.class Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder$1;
.super Ljava/lang/Object;
.source "ErrorBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder$1;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder$1;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog$ViewHolder;->a:Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ErrorBlurDialog;->dismiss()V

    .line 212
    return-void
.end method
