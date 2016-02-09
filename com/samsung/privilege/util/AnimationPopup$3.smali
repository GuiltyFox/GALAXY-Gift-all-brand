.class Lcom/samsung/privilege/util/AnimationPopup$3;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isUseSmallImageFinal:Z

.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pAnimationSet:I

.field private final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field private final synthetic val$pImagePopup2:Landroid/widget/ImageView;

.field private final synthetic val$pLayoutBack:Landroid/widget/RelativeLayout;

.field private final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;

.field private final synthetic val$pLayoutPopup:Landroid/widget/RelativeLayout;

.field private final synthetic val$pTvNext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/ImageView;IZLandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iput p4, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iput-boolean p5, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    iput-object p6, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 235
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v6, :cond_1d

    .line 236
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/privilege/util/AnimationPopup$3$1;

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-object v4, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/privilege/util/AnimationPopup$3$1;-><init>(Lcom/samsung/privilege/util/AnimationPopup$3;Landroid/widget/RelativeLayout;ILandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    :goto_1c
    return-void

    .line 250
    :cond_1d
    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$5()Landroid/view/animation/Animation;

    move-result-object v12

    .line 251
    .local v12, "outToLeft":Landroid/view/animation/Animation;
    invoke-virtual {v12, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 253
    invoke-virtual {v12, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 254
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    new-instance v0, Lcom/samsung/privilege/util/AnimationPopup$3$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/AnimationPopup$3$2;-><init>(Lcom/samsung/privilege/util/AnimationPopup$3;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v3, :cond_7c

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v4, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    invoke-static {v4}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    .line 285
    :cond_4e
    :goto_4e
    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$6()Landroid/view/animation/Animation;

    move-result-object v11

    .line 286
    .local v11, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 287
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 288
    invoke-virtual {v11, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    new-instance v0, Lcom/samsung/privilege/util/AnimationPopup$3$3;

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v5, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v6, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    iget-object v7, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pTvNext:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/privilege/util/AnimationPopup$3$3;-><init>(Lcom/samsung/privilege/util/AnimationPopup$3;Landroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1c

    .line 277
    .end local v11    # "inFromRight":Landroid/view/animation/Animation;
    :cond_7c
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v4, :cond_93

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v5, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    invoke-static {v5}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    goto :goto_4e

    .line 280
    :cond_93
    # getter for: Lcom/samsung/privilege/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lcom/samsung/privilege/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v5, :cond_4e

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lcom/samsung/privilege/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lcom/samsung/privilege/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v6, v2}, Lcom/samsung/privilege/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-static {v6}, Lcom/samsung/privilege/util/AnimationPopup;->access$3(I)V

    goto :goto_4e
.end method
