.class final Lcom/bzbs/lib/survey/util/AnimationPopup$3;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isUseSmallImageFinal:Z

.field final synthetic val$pActivity:Landroid/app/Activity;

.field final synthetic val$pAnimationSet:I

.field final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;

.field final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;ZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 236
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pAnimationSet:I

    iput-object p4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iput-boolean p6, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    iput-object p7, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 239
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v8, :cond_17

    .line 240
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    new-instance v3, Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    :goto_16
    return-void

    .line 254
    :cond_17
    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$400()Landroid/view/animation/Animation;

    move-result-object v1

    .line 255
    .local v1, "outToLeft":Landroid/view/animation/Animation;
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 257
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPopup$3$2;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$2;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 278
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v5, :cond_63

    .line 279
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v6, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v6}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    .line 289
    :cond_48
    :goto_48
    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$500()Landroid/view/animation/Animation;

    move-result-object v0

    .line 290
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 291
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 292
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$3$3;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16

    .line 281
    .end local v0    # "inFromRight":Landroid/view/animation/Animation;
    :cond_63
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v6, :cond_7a

    .line 282
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v7, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v7}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    goto :goto_48

    .line 284
    :cond_7a
    # getter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$100()I

    move-result v2

    if-ne v2, v7, :cond_48

    .line 285
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v4, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/bzbs/lib/survey/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v3, v8, v4}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$200(IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    # setter for: Lcom/bzbs/lib/survey/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {v8}, Lcom/bzbs/lib/survey/util/AnimationPopup;->access$102(I)I

    goto :goto_48
.end method
