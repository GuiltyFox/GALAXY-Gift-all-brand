.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;
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
    .line 243
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->etComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 251
    :cond_18
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget v1, v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v1, v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->etComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Landroid/view/View;)V

    .line 254
    return-void
.end method
