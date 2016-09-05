.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 269
    :cond_11
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Landroid/view/View;)V

    .line 270
    return-void
.end method
