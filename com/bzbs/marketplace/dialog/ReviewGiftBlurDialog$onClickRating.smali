.class public Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

.field b:I

.field final synthetic c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;I)V
    .registers 4

    .prologue
    .line 216
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    .line 218
    iput p3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->b:I

    .line 219
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 223
    const/4 v2, 0x5

    .line 224
    new-array v3, v2, [Z

    move v0, v1

    .line 225
    :goto_9
    if-ge v0, v2, :cond_17

    .line 226
    iget v4, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->b:I

    if-ge v0, v4, :cond_14

    .line 227
    aput-boolean v5, v3, v0

    .line 225
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 229
    :cond_14
    aput-boolean v1, v3, v0

    goto :goto_11

    .line 232
    :cond_17
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating1:Landroid/widget/ImageView;

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 233
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating2:Landroid/widget/ImageView;

    aget-boolean v1, v3, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 234
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating3:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating4:Landroid/widget/ImageView;

    aget-boolean v1, v3, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->imgRating5:Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 238
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->b:I

    if-ge v0, v6, :cond_5e

    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentHighRate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->layoutOK:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$1;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_5d
    return-void

    .line 257
    :cond_5e
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->contentLessRate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->c:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->layoutOK:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating$2;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$onClickRating;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5d
.end method
