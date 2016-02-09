.class Lic/buzzebeeslib/util/AnimationPopup$3;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    iput-object p2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iput-object p3, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iput p4, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    iput-boolean p5, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    iput-object p6, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pTvNext:Landroid/widget/TextView;

    iput-object p8, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iput-object p9, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    .line 236
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

    .line 239
    # getter for: Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v6, :cond_1b

    .line 240
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lic/buzzebeeslib/util/AnimationPopup$3$1;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iget v3, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    invoke-direct {v1, p0, v2, v3}, Lic/buzzebeeslib/util/AnimationPopup$3$1;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3;Landroid/widget/RelativeLayout;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    :goto_1a
    return-void

    .line 254
    :cond_1b
    # invokes: Lic/buzzebeeslib/util/AnimationPopup;->outToLeftAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$5()Landroid/view/animation/Animation;

    move-result-object v12

    .line 255
    .local v12, "outToLeft":Landroid/view/animation/Animation;
    invoke-virtual {v12, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 257
    invoke-virtual {v12, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    new-instance v0, Lic/buzzebeeslib/util/AnimationPopup$3$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/util/AnimationPopup$3$2;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 278
    # getter for: Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v3, :cond_7a

    .line 279
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lic/buzzebeeslib/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v4, v2}, Lic/buzzebeeslib/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    invoke-static {v4}, Lic/buzzebeeslib/util/AnimationPopup;->access$3(I)V

    .line 289
    :cond_4c
    :goto_4c
    # invokes: Lic/buzzebeeslib/util/AnimationPopup;->inFromRightAnimation()Landroid/view/animation/Animation;
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$6()Landroid/view/animation/Animation;

    move-result-object v11

    .line 290
    .local v11, "inFromRight":Landroid/view/animation/Animation;
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 291
    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 292
    invoke-virtual {v11, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    new-instance v0, Lic/buzzebeeslib/util/AnimationPopup$3$3;

    iget-object v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutPopup:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pActivity:Landroid/app/Activity;

    iget-object v4, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup1:Landroid/widget/ImageView;

    iget v5, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v6, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    iget-object v7, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pTvNext:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutBack:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pLayoutButton:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lic/buzzebeeslib/util/AnimationPopup$3$3;-><init>(Lic/buzzebeeslib/util/AnimationPopup$3;Landroid/widget/RelativeLayout;Landroid/app/Activity;Landroid/widget/ImageView;IZLandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1a

    .line 281
    .end local v11    # "inFromRight":Landroid/view/animation/Animation;
    :cond_7a
    # getter for: Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v4, :cond_91

    .line 282
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lic/buzzebeeslib/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v5, v2}, Lic/buzzebeeslib/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    invoke-static {v5}, Lic/buzzebeeslib/util/AnimationPopup;->access$3(I)V

    goto :goto_4c

    .line 284
    :cond_91
    # getter for: Lic/buzzebeeslib/util/AnimationPopup;->gCurrentPopupWelcome:I
    invoke-static {}, Lic/buzzebeeslib/util/AnimationPopup;->access$1()I

    move-result v0

    if-ne v0, v5, :cond_4c

    .line 285
    iget-object v0, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pImagePopup2:Landroid/widget/ImageView;

    iget v1, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$pAnimationSet:I

    iget-boolean v2, p0, Lic/buzzebeeslib/util/AnimationPopup$3;->val$isUseSmallImageFinal:Z

    # invokes: Lic/buzzebeeslib/util/AnimationPopup;->getImagePopup(IIZ)I
    invoke-static {v1, v6, v2}, Lic/buzzebeeslib/util/AnimationPopup;->access$2(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    invoke-static {v6}, Lic/buzzebeeslib/util/AnimationPopup;->access$3(I)V

    goto :goto_4c
.end method
